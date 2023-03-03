const nodemailer = require('nodemailer');

const SendEmailPassword = async (datos) => {
  const { email, name, changePasswordCode } = datos;
  const transport = nodemailer.createTransport({
    host: process.env.EMAIL_HOST,
    port: process.env.EMAIL_PORT,
    secure: false, // true for 465, false para otros puertos
    auth: {
      user: process.env.EMAIL_USER,
      pass: process.env.EMAIL_PASS,
    },
    tls: {
      rejectUnauthorized: false,
    },
  });

  const info = await transport.sendMail({
    from: '"Te Veo" <soporte.teveoapp@gmail.com>',
    to: email,
    subject: 'Reestablece tu Password',
    text: 'Code',
    html: `<p>Hola: ${name} has solicitado reestablecer tu password</p>
      <p>Sigue el siguiente enlace para generar un nuevo password: 
      <a href="${process.env.HOST_CLIENT}/forget-password/${changePasswordCode}">Reestablecer Password</a>      
      <p>Si tu no solicitaste este email, puedes ignorar el mensaje</p>     
      
      `,
  });
};

const SendUserValidationEmail = async (datos) => {
  const { email, name, validationCode } = datos;
  console.log(datos);
  const transport = nodemailer.createTransport({
    host: process.env.EMAIL_HOST,
    port: process.env.EMAIL_PORT,
    secure: true, // true for 465, false para otros puertos
    auth: {
      user: process.env.EMAIL_USER,
      pass: process.env.EMAIL_PASS,
    },
    tls: {
      rejectUnauthorized: false,
    },
  });

  const info = await transport.sendMail({
    from: '"Te Veo" <msdsptm@yandex.com>',
    to: email,
    subject: 'valida tu correo',
    text: 'Code',
    html: `<p>Hola: ${name} este correo es para confirmar tu cuenta</p>
      <p> ingresa el  siguiente codigo en tu aplicacion para confirmar tu cuenta: 
      <p>${validationCode}</p>      
      <p>Si tu no solicitaste este email, puedes ignorar el mensaje</p>     
      
      `,
  });
};

module.exports = { SendEmailPassword, SendUserValidationEmail };
