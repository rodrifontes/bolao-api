const authConfig = require('../config/auth');
const jwt = require('jsonwebtoken');

module.exports = (request, response, next) => {
  const authHeader = request.headers.authorization;

  if (!authHeader) {
    return response.status(401).json({ error: 'Token is missing!' });
  }

  const token = authHeader.split(' ')[1];

  try {
    let verifyTokenResult = jwt.verify(token, authConfig.jwt.secretKey);

    if (verifyTokenResult instanceof Error) {
      return response.status(401).json({ error: 'Token not found' });
    }
    next();
  } catch (error) {
    return response.status(401).json({ error: 'Invalid Token' });
  }
}
