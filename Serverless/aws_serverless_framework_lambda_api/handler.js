'use strict';

module.exports.hello = async event => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: 'The value for the environment variable is:' + process.env.ENV_VAR,
        input: event,
      },
      null,
      2
    ),
  };
};
