/*
 * Copyright (c) 2014-2023 Bjoern Kimminich & the OWASP Juice Shop contributors.
 * SPDX-License-Identifier: MIT
 */

import challengeUtils = require('../lib/challengeUtils')
import { Request, Response } from 'express'

const security = require('../lib/insecurity')
const cache = require('../data/datacache')
const challenges = cache.challenges

module.exports = function retrieveLoggedInUser () {
  return (req: Request, res: Response) => {
    let user
    try {
      if (security.verify(req.cookies.token)) {
        user = security.authenticatedUsers.get(req.cookies.token)
        const response = { user: { id: (user?.data ? user.data.id : undefined)}}
      if (req.query.callback === undefined) {
        res.json(response)
      } else {
        challengeUtils.solveIf(challenges.emailLeakChallenge, () => { return true })
        res.jsonp(response)
      }
    }
    } catch (err) {
      user = undefined
      res.status(400).json({ error: 'Unauthorized' })
    }
    }
  }

