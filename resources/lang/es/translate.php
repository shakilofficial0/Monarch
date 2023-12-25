<?php

return [
	// Página de inicio de sesión
	'welcome_message' => '¡Bienvenido a The ' . config('variables.templateName') . '! 👋',
	'welcome_short_message' => 'Por favor, inicie sesión en su cuenta y comience la aventura',
	'email_or_username' => 'Correo electrónico o nombre de usuario',
	'password' => 'Contraseña',
	'forgot_password' => '¿Olvidó su contraseña?',
	'remember_me' => 'Recuérdame',
	'login' => 'Iniciar sesión',
	'new_on_our_platform' => '¿Nuevo en nuestra plataforma?',
	'create_an_account' => 'Crear una cuenta',
	'or' => 'o',
	'minutes_left' => 'Minuto(s) restante(s)',
	'login_forbidden' =>
		'Inicio de sesión restringido por el administrador. Por favor, inténtelo de nuevo cuando esté disponible.',
	'login_unavailable' => '¡Inicio de sesión restringido! 😢',
	'login_unavailable_details' =>
		'Se ha restringido el acceso de todos los usuarios. Solo se permite el inicio de sesión a los administradores del sistema. Por favor, espere hasta que cambiemos de opinión. Gracias',

	// Olvidó la contraseña
	'forgot_password_text' =>
		'Ingrese su correo electrónico y le enviaremos instrucciones para restablecer su contraseña',
	'email' => 'Correo electrónico',
	'send_password_reset_link' => 'Enviar enlace para restablecer la contraseña',
	'back_to_login' => 'Volver a iniciar sesión',
	// Restablecer contraseña
	'reset_password' => 'Restablecer contraseña',
	'reset_password_text' => 'Su nueva contraseña debe ser diferente de las contraseñas utilizadas previamente',
	'new_password' => 'Nueva contraseña',
	'confirm_password' => 'Confirmar contraseña',
	'password_reset_success' => '¡Restablecimiento de contraseña exitoso!',
	'password_reset_success_text' =>
		'Su contraseña se ha restablecido correctamente. Inicie sesión con su nueva contraseña.',
	'invalid_token' => 'Su token ha caducado o no es válido. Por favor, inténtelo de nuevo.',
	// Verificar correo electrónico
	'verify_email' => 'Verificar su dirección de correo electrónico',
	'verify_email_text_1' => 'Hemos enviado un enlace a su dirección de correo electrónico registrada',
	'verify_email_text_2' => 'Por favor, siga el enlace dentro del correo electrónico para continuar.',
	'verify_mail_sent' => '¡Nuevo correo de verificación enviado!',
	'verify_mail_send_text_1' =>
		'Hemos enviado un nuevo enlace de verificación por correo electrónico que está vinculado a esta cuenta. Por favor, revise la carpeta de spam si no puede recibirlo.',
	'did_not_receive_email' => '¿No recibió el correo electrónico?',
	'resend' => 'Reenviar',
	'logout' => 'Cerrar sesión',
	'skip_for_now' => 'Omitir por ahora',
	// Página de registro
	'register' => 'La aventura comienza aquí',
	'register_text' => 'Haz tu vida tan suave como una mariposa',
	'username' => 'Nombre de usuario',
	'full_name' => 'Nombre completo',
	'mobile_number' => 'Número de móvil',
	'retype_password' => 'Vuelva a escribir su contraseña',
	'i_agree_to_the' => 'Estoy de acuerdo con la',
	'terms_and_conditions' => 'Política de privacidad y términos',
	'sign_up' => 'Registrarse',
	'already_have_an_account' => '¿Ya tienes una cuenta?',
	'sign_in_instead' => 'Inicia sesión en su lugar',
	'registration_unavailable' => 'Registro cerrado',
	'registration_unavailable_details' =>
		'Lo siento, ahora no estamos aceptando nuevos usuarios. Una invitación de nuestro usuario existente puede cumplir tu deseo de registrarte. De lo contrario, tendrás que esperar hasta que cambiemos de opinión. Gracias',
	'address' => 'Dirección',
	'state_city' => 'Estado / Ciudad',
	'zip' => 'Código postal',
	'gender' => 'Género',
	'date_of_birth' => 'Fecha de nacimiento',
	'country' => 'País',
	'gender_male' => 'Masculino',
	'gender_female' => 'Femenino',
	'gender_others' => 'Otros',
];
