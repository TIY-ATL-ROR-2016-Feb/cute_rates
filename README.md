# cute_rates API

Welcome to cute rates, a service for rating cute things.

## General Rules

### Authorization

All authorized requests unless otherwise mentioned require
a "Auth-Token" header to be present. Users are assigned an
Auth Token during account creation.

### Errors

Any request that fails to be processed will contain an "errors"
key in the returned JSON describing the problem.

## Routes

#### POST /signups

Params:
  * first: string
  * last: string
  * email: string
  * password: string
  
Returns 201 Created on Success and 422 Unprocessable Entity in case fof failure.

**Request:**

```
{
  "first": "Brit",
  "last": "Butler",
  "email": "brit@lies.com",
  "password": "cookies"
}
```

**Response:**

```
{
  "user": {
    "first_name": "brit",
    "last_name": "butler",
    "email": "brit@lies.com",
    "auth_token": "7774743beeb3c26dfdd80213ba1b9097"
  }
}
```

