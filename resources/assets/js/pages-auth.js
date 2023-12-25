/**
 *  Pages Authentication
 */

'use strict';


const formAuthentication = document.querySelector('#formAuthentication');

document.addEventListener('DOMContentLoaded', function (e) {
  (function () {
    // Form validation for Add new record
    if(lang == 'en'){
        var message = {
            username: {
                notEmpty: 'Please enter username',
                stringLength: 'Username must be more than 6 characters'
            },
            email: {
                notEmpty: 'Please enter your Username or Email',
                stringLength: 'Username or Email must be more than 6 characters'
            },
            emailUsername: {
                notEmpty: 'Please enter email / username',
                stringLength: 'Username must be more than 6 characters'
            },
            password: {
                notEmpty: 'Please enter your password',
                stringLength: 'Password must be more than 6 characters'
            },
            confirmPassword: {
                notEmpty: 'Please confirm password',
                identical: 'The password and its confirm are not the same',
                stringLength: 'Password must be more than 6 characters'
            },
            terms: {
                notEmpty: 'Please agree terms & conditions'
            },
            full_name: {
                notEmpty: 'Please enter your full name'
            },
            address: {
                notEmpty: 'Please enter your address'
            },
            state: {
                notEmpty: 'Please enter your state/city'
            },
            country: {
                notEmpty: 'Please enter your country'
            },
            zip: {
                notEmpty: 'Please enter your zip code'
            },
            date_of_birth: {
                notEmpty: 'Please enter your date of birth'
            },
            gender: {
                notEmpty: 'Please select your Gender'
            },
            mobile: {
                notEmpty: 'Please enter your mobile number'
            },

        };
    } else if(lang == 'bn'){
        var message = {
            username: {
                notEmpty: 'অনুগ্রহ করে ব্যবহারকারীর নাম (ইউজারনেম) লিখুন',
                stringLength: 'ব্যবহারকারীর নাম(ইউজারনেম) অবশ্যই ৬ অক্ষরের বেশি হতে হবে'
            },
            email: {
                notEmpty: 'অনুগ্রহ করে আপনার ইউজারনেম বা ইমেল লিখুন',
                stringLength: 'ইউজারনেম বা ইমেল অবশ্যই ৬ অক্ষরের বেশি হতে হবে'
            },
            emailUsername: {
                notEmpty: 'অনুগ্রহ করে ইমেল/ইউজারনেম লিখুন',
                stringLength: 'ইউজারনেম অবশ্যই ৬ অক্ষরের বেশি হতে হবে'
            },
            password: {
                notEmpty: 'অনুগ্রহ করে আপনার পাসওয়ার্ড লিখুন',
                stringLength: 'পাসওয়ার্ড অবশ্যই ৬ অক্ষরের বেশি হতে হবে'
            },
            confirmPassword: {
                notEmpty: 'পাসওয়ার্ড নিশ্চিত করুন',
                identical: 'পাসওয়ার্ড এবং তার নিশ্চিতকরণ পাসওয়ার্ড এক নয়',
                stringLength: 'পাসওয়ার্ড অবশ্যই ৬ অক্ষরের বেশি হতে হবে'
            },
            terms: {
                notEmpty: 'নিয়ম ও শর্তাবলী সম্মত করুন'
            },
            full_name: {
                notEmpty: 'অনুগ্রহ করে আপনার পুরো নাম লিখুন'
            },
            address: {
                notEmpty: 'অনুগ্রহ করে আপনার ঠিকানা লিখুন'
            },
            state: {
                notEmpty: 'অনুগ্রহ করে আপনার রাষ্ট্র / শহর লিখুন'
            },
            country: {
                notEmpty: 'অনুগ্রহ করে আপনার দেশ লিখুন'
            },
            zip: {
                notEmpty: 'অনুগ্রহ করে আপনার জিপ কোড লিখুন'
            },
            date_of_birth: {
                notEmpty: 'অনুগ্রহ করে আপনার জন্ম তারিখ লিখুন'
            },
            gender: {
                notEmpty: 'অনুগ্রহ করে আপনার লিঙ্গ নির্বাচন করুন'
            },
            mobile: {
                notEmpty: 'অনুগ্রহ করে আপনার মোবাইল নম্বর লিখুন'
            },
        };

    } else if(lang == 'de'){
        var message = {
            username: {
                notEmpty: 'Bitte geben Sie einen Benutzernamen ein',
                stringLength: 'Benutzername muss mehr als 6 Zeichen lang sein'
            },
            email: {
                notEmpty: 'Bitte geben Sie Ihren Benutzernamen oder Ihre E-Mail-Adresse ein',
                stringLength: 'Benutzername oder E-Mail-Adresse muss mehr als 6 Zeichen lang sein'
            },
            emailUsername: {
                notEmpty: 'Bitte geben Sie E-Mail oder Benutzernamen ein',
                stringLength: 'Benutzername muss mehr als 6 Zeichen lang sein'
            },
            password: {
                notEmpty: 'Bitte geben Sie Ihr Passwort ein',
                stringLength: 'Passwort muss mehr als 6 Zeichen lang sein'
            },
            confirmPassword: {
                notEmpty: 'Bitte bestätigen Sie das Passwort',
                identical: 'Das Passwort und seine Bestätigung stimmen nicht überein',
                stringLength: 'Passwort muss mehr als 6 Zeichen lang sein'
            },
            terms: {
                notEmpty: 'Bitte stimmen Sie den Nutzungsbedingungen zu'
            },
            full_name: {
                notEmpty: 'Bitte geben Sie Ihren vollständigen Namen ein'
            },
            address: {
                notEmpty: 'Bitte geben Sie Ihre Adresse ein'
            },
            state: {
                notEmpty: 'Bitte geben Sie Ihren Bundesstaat / Ihre Stadt ein'
            },
            country: {
                notEmpty: 'Bitte geben Sie Ihr Land ein'
            },
            zip: {
                notEmpty: 'Bitte geben Sie Ihre Postleitzahl ein'
            },
            date_of_birth: {
                notEmpty: 'Bitte geben Sie Ihr Geburtsdatum ein'
            },
            gender: {
                notEmpty: 'Bitte wählen Sie Ihr Geschlecht aus'
            },
            mobile: {
                notEmpty: 'Bitte geben Sie Ihre Handynummer ein'
            },
        };


    } else if(lang == 'ar'){
        var message = {
            username: {
                notEmpty: 'الرجاء إدخال اسم المستخدم',
                stringLength: 'يجب أن يكون اسم المستخدم أكثر من 6 أحرف'
            },
            email: {
                notEmpty: 'الرجاء إدخال اسم المستخدم أو البريد الإلكتروني',
                stringLength: 'يجب أن يكون اسم المستخدم أو البريد الإلكتروني أكثر من 6 أحرف'
            },
            emailUsername: {
                notEmpty: 'الرجاء إدخال البريد الإلكتروني / اسم المستخدم',
                stringLength: 'يجب أن يكون اسم المستخدم أكثر من 6 أحرف'
            },
            password: {
                notEmpty: 'الرجاء إدخال كلمة المرور الخاصة بك',
                stringLength: 'يجب أن تكون كلمة المرور أكثر من 6 أحرف'
            },
            confirmPassword: {
                notEmpty: 'الرجاء تأكيد كلمة المرور',
                identical: 'كلمة المرور وتأكيدها غير متطابقين',
                stringLength: 'يجب أن تكون كلمة المرور أكثر من 6 أحرف'
            },
            terms: {
                notEmpty: 'الرجاء الموافقة على الشروط والأحكام'
            },
            full_name: {
                notEmpty: 'الرجاء إدخال اسمك الكامل'
            },
            address: {
                notEmpty: 'الرجاء إدخال عنوانك'
            },
            state: {
                notEmpty: 'الرجاء إدخال ولايتك / مدينتك'
            },
            country: {
                notEmpty: 'الرجاء إدخال بلدك'
            },
            zip: {
                notEmpty: 'الرجاء إدخال الرمز البريدي'
            },
            date_of_birth: {
                notEmpty: 'الرجاء إدخال تاريخ ميلادك'
            },
            gender: {
                notEmpty: 'الرجاء اختيار جنسك'
            },
            mobile: {
                notEmpty: 'الرجاء إدخال رقم هاتفك المحمول'
            },
        };

    } else if(lang == 'es'){
        var message = {
            username: {
                notEmpty: 'Por favor, ingrese un nombre de usuario',
                stringLength: 'El nombre de usuario debe tener más de 6 caracteres'
            },
            email: {
                notEmpty: 'Por favor, ingrese su nombre de usuario o correo electrónico',
                stringLength: 'El nombre de usuario o correo electrónico debe tener más de 6 caracteres'
            },
            emailUsername: {
                notEmpty: 'Por favor, ingrese correo electrónico / nombre de usuario',
                stringLength: 'El nombre de usuario debe tener más de 6 caracteres'
            },
            password: {
                notEmpty: 'Por favor, ingrese su contraseña',
                stringLength: 'La contraseña debe tener más de 6 caracteres'
            },
            confirmPassword: {
                notEmpty: 'Por favor, confirme la contraseña',
                identical: 'La contraseña y su confirmación no son iguales',
                stringLength: 'La contraseña debe tener más de 6 caracteres'
            },
            terms: {
                notEmpty: 'Por favor, acepte los términos y condiciones'
            },
            full_name: {
                notEmpty: 'Por favor, ingrese su nombre completo'
            },
            address: {
                notEmpty: 'Por favor, ingrese su dirección'
            },
            state: {
                notEmpty: 'Por favor, ingrese su estado / ciudad'
            },
            country: {
                notEmpty: 'Por favor, ingrese su país'
            },
            zip: {
                notEmpty: 'Por favor, ingrese su código postal'
            },
            date_of_birth: {
                notEmpty: 'Por favor, ingrese su fecha de nacimiento'
            },
            gender: {
                notEmpty: 'Por favor, seleccione su género'
            },
            mobile: {
                notEmpty: 'Por favor, ingrese su número de móvil'
            },
        };

} else if(lang == 'fr'){
    var message = {
        username: {
            notEmpty: 'Veuillez entrer un nom d\'utilisateur',
            stringLength: 'Le nom d\'utilisateur doit comporter plus de 6 caractères'
        },
        email: {
            notEmpty: 'Veuillez entrer votre nom d\'utilisateur ou votre adresse e-mail',
            stringLength: 'Le nom d\'utilisateur ou l\'adresse e-mail doit comporter plus de 6 caractères'
        },
        emailUsername: {
            notEmpty: 'Veuillez entrer un e-mail / nom d\'utilisateur',
            stringLength: 'Le nom d\'utilisateur doit comporter plus de 6 caractères'
        },
        password: {
            notEmpty: 'Veuillez entrer votre mot de passe',
            stringLength: 'Le mot de passe doit comporter plus de 6 caractères'
        },
        confirmPassword: {
            notEmpty: 'Veuillez confirmer le mot de passe',
            identical: 'Le mot de passe et sa confirmation ne sont pas identiques',
            stringLength: 'Le mot de passe doit comporter plus de 6 caractères'
        },
        terms: {
            notEmpty: 'Veuillez accepter les termes et conditions'
        },
        full_name: {
            notEmpty: 'Veuillez entrer votre nom complet'
        },
        address: {
            notEmpty: 'Veuillez entrer votre adresse'
        },
        state: {
            notEmpty: 'Veuillez entrer votre état / ville'
        },
        country: {
            notEmpty: 'Veuillez entrer votre pays'
        },
        zip: {
            notEmpty: 'Veuillez entrer votre code postal'
        },
        date_of_birth: {
            notEmpty: 'Veuillez entrer votre date de naissance'
        },
        gender: {
            notEmpty: 'Veuillez sélectionner votre sexe'
        },
        mobile: {
            notEmpty: 'Veuillez entrer votre numéro de portable'
        },
    };

} else if(lang == 'hi'){
    var message = {
        username: {
            notEmpty: 'कृपया एक उपयोगकर्ता नाम दर्ज करें',
            stringLength: 'उपयोगकर्ता नाम 6 अक्षरों से अधिक होना चाहिए'
        },
        email: {
            notEmpty: 'कृपया अपना उपयोगकर्ता नाम या ईमेल दर्ज करें',
            stringLength: 'उपयोगकर्ता नाम या ईमेल 6 अक्षरों से अधिक होना चाहिए'
        },
        emailUsername: {
            notEmpty: 'कृपया ईमेल / उपयोगकर्ता दर्ज करें',
            stringLength: 'उपयोगकर्ता नाम 6 अक्षरों से अधिक होना चाहिए'
        },
        password: {
            notEmpty: 'कृपया अपना पासवर्ड दर्ज करें',
            stringLength: 'पासवर्ड 6 अक्षरों से अधिक होना चाहिए'
        },
        confirmPassword: {
            notEmpty: 'कृपया पासवर्ड की पुष्टि करें',
            identical: 'पासवर्ड और इसकी पुष्टि समान नहीं हैं',
            stringLength: 'पासवर्ड 6 अक्षरों से अधिक होना चाहिए'
        },
        terms: {
            notEmpty: 'कृपया नियम और शर्तों को स्वीकार करें'
        },
        full_name: {
            notEmpty: 'कृपया अपना पूरा नाम दर्ज करें'
        },
        address: {
            notEmpty: 'कृपया अपना पता दर्ज करें'
        },
        state: {
            notEmpty: 'कृपया अपना राज्य / शहर दर्ज करें'
        },
        country: {
            notEmpty: 'कृपया अपना देश दर्ज करें'
        },
        zip: {
            notEmpty: 'कृपया अपना ज़िप कोड दर्ज करें'
        },
        date_of_birth: {
            notEmpty: 'कृपया अपना जन्म तिथि दर्ज करें'
        },
        gender: {
            notEmpty: 'कृपया अपना लिंग चुनें'
        },
        mobile: {
            notEmpty: 'कृपया अपना मोबाइल नंबर दर्ज करें'
        },
    };

} else if(lang == 'it'){
    var message = {
        username: {
            notEmpty: 'Per favore, inserisci un nome utente',
            stringLength: 'Il nome utente deve contenere più di 6 caratteri'
        },
        email: {
            notEmpty: 'Per favore, inserisci il tuo nome utente o l\'indirizzo email',
            stringLength: 'Il nome utente o l\'indirizzo email deve contenere più di 6 caratteri'
        },
        emailUsername: {
            notEmpty: 'Per favore, inserisci email / nome utente',
            stringLength: 'Il nome utente deve contenere più di 6 caratteri'
        },
        password: {
            notEmpty: 'Per favore, inserisci la tua password',
            stringLength: 'La password deve contenere più di 6 caratteri'
        },
        confirmPassword: {
            notEmpty: 'Per favore, conferma la password',
            identical: 'La password e la sua conferma non corrispondono',
            stringLength: 'La password deve contenere più di 6 caratteri'
        },
        terms: {
            notEmpty: 'Per favore, accetta i termini e le condizioni'
        },
        full_name: {
            notEmpty: 'Per favore, inserisci il tuo nome completo'
        },
        address: {
            notEmpty: 'Per favore, inserisci il tuo indirizzo'
        },
        state: {
            notEmpty: 'Per favore, inserisci il tuo stato / città'
        },
        country: {
            notEmpty: 'Per favore, inserisci il tuo paese'
        },
        zip: {
            notEmpty: 'Per favore, inserisci il tuo codice postale'
        },
        date_of_birth: {
            notEmpty: 'Per favore, inserisci la tua data di nascita'
        },
        gender: {
            notEmpty: 'Per favore, seleziona il tuo genere'
        },
        mobile: {
            notEmpty: 'Per favore, inserisci il tuo numero di cellulare'
        },
    };

} else if(lang == 'ja'){
    var message = {
        username: {
            notEmpty: 'ユーザー名を入力してください',
            stringLength: 'ユーザー名は6文字以上である必要があります'
        },
        email: {
            notEmpty: 'ユーザー名またはメールアドレスを入力してください',
            stringLength: 'ユーザー名またはメールアドレスは6文字以上である必要があります'
        },
        emailUsername: {
            notEmpty: 'メール/ユーザー名を入力してください',
            stringLength: 'ユーザー名は6文字以上である必要があります'
        },
        password: {
            notEmpty: 'パスワードを入力してください',
            stringLength: 'パスワードは6文字以上である必要があります'
        },
        confirmPassword: {
            notEmpty: 'パスワードを確認してください',
            identical: 'パスワードとその確認が同じではありません',
            stringLength: 'パスワードは6文字以上である必要があります'
        },
        terms: {
            notEmpty: '利用規約に同意してください'
        },
        full_name: {
            notEmpty: 'フルネームを入力してください'
        },
        address: {
            notEmpty: '住所を入力してください'
        },
        state: {
            notEmpty: '州/市を入力してください'
        },
        country: {
            notEmpty: '国を入力してください'
        },
        zip: {
            notEmpty: '郵便番号を入力してください'
        },
        date_of_birth: {
            notEmpty: '生年月日を入力してください'
        },
        gender: {
            notEmpty: '性別を選択してください'
        },
        mobile: {
            notEmpty: '携帯電話番号を入力してください'
        },
    };

} else if(lang == 'ko'){
    var message = {
        username: {
            notEmpty: '사용자 이름을 입력하세요',
            stringLength: '사용자 이름은 6자 이상이어야 합니다'
        },
        email: {
            notEmpty: '사용자 이름 또는 이메일을 입력하세요',
            stringLength: '사용자 이름 또는 이메일은 6자 이상이어야 합니다'
        },
        emailUsername: {
            notEmpty: '이메일/사용자 이름을 입력하세요',
            stringLength: '사용자 이름은 6자 이상이어야 합니다'
        },
        password: {
            notEmpty: '비밀번호를 입력하세요',
            stringLength: '비밀번호는 6자 이상이어야 합니다'
        },
        confirmPassword: {
            notEmpty: '비밀번호를 확인하세요',
            identical: '비밀번호와 확인 비밀번호가 일치하지 않습니다',
            stringLength: '비밀번호는 6자 이상이어야 합니다'
        },
        terms: {
            notEmpty: '약관에 동의하세요'
        },
        full_name: {
            notEmpty: '전체 이름을 입력하세요'
        },
        address: {
            notEmpty: '주소를 입력하세요'
        },
        state: {
            notEmpty: '주 / 도시를 입력하세요'
        },
        country: {
            notEmpty: '국가를 입력하세요'
        },
        zip: {
            notEmpty: '우편 번호를 입력하세요'
        },
        date_of_birth: {
            notEmpty: '생년월일을 입력하세요'
        },
        gender: {
            notEmpty: '성별을 선택하세요'
        },
        mobile: {
            notEmpty: '휴대폰 번호를 입력하세요'
        },
    };

} else if(lang == 'ru'){
    var message = {
        username: {
            notEmpty: 'Пожалуйста, введите имя пользователя',
            stringLength: 'Имя пользователя должно содержать более 6 символов'
        },
        email: {
            notEmpty: 'Пожалуйста, введите имя пользователя или адрес электронной почты',
            stringLength: 'Имя пользователя или адрес электронной почты должны содержать более 6 символов'
        },
        emailUsername: {
            notEmpty: 'Пожалуйста, введите электронную почту / имя пользователя',
            stringLength: 'Имя пользователя должно содержать более 6 символов'
        },
        password: {
            notEmpty: 'Пожалуйста, введите пароль',
            stringLength: 'Пароль должен содержать более 6 символов'
        },
        confirmPassword: {
            notEmpty: 'Пожалуйста, подтвердите пароль',
            identical: 'Пароль и его подтверждение не совпадают',
            stringLength: 'Пароль должен содержать более 6 символов'
        },
        terms: {
            notEmpty: 'Пожалуйста, примите условия и положения'
        },
        full_name: {
            notEmpty: 'Пожалуйста, введите свое полное имя'
        },
        address: {
            notEmpty: 'Пожалуйста, введите свой адрес'
        },
        state: {
            notEmpty: 'Пожалуйста, введите свой штат / город'
        },
        country: {
            notEmpty: 'Пожалуйста, введите свою страну'
        },
        zip: {
            notEmpty: 'Пожалуйста, введите свой почтовый индекс'
        },
        date_of_birth: {
            notEmpty: 'Пожалуйста, введите свой день рождения'
        },
        gender: {
            notEmpty: 'Пожалуйста, выберите свой пол'
        },
        mobile: {
            notEmpty: 'Пожалуйста, введите свой мобильный номер'
        },
    };

} else {
        var message = {
            username: {
                notEmpty: 'Please enter username',
                stringLength: 'Username must be more than 6 characters'
            },
            email: {
                notEmpty: 'Please enter your Username or Email',
                stringLength: 'Username or Email must be more than 6 characters'
            },
            emailUsername: {
                notEmpty: 'Please enter email / username',
                stringLength: 'Username must be more than 6 characters'
            },
            password: {
                notEmpty: 'Please enter your password',
                stringLength: 'Password must be more than 6 characters'
            },
            confirmPassword: {
                notEmpty: 'Please confirm password',
                identical: 'The password and its confirm are not the same',
                stringLength: 'Password must be more than 6 characters'
            },
            terms: {
                notEmpty: 'Please agree terms & conditions'
            },
            full_name: {
                notEmpty: 'Please enter your full name'
            },
            address: {
                notEmpty: 'Please enter your address'
            },
            state: {
                notEmpty: 'Please enter your state/city'
            },
            country: {
                notEmpty: 'Please enter your country'
            },
            zip: {
                notEmpty: 'Please enter your zip code'
            },
            date_of_birth: {
                notEmpty: 'Please enter your date of birth'
            },
            gender: {
                notEmpty: 'Please select your Gender'
            },
            mobile: {
                notEmpty: 'Please enter your mobile number'
            },
        };
    }

    if (formAuthentication) {
      const fv = FormValidation.formValidation(formAuthentication, {
        fields: {
          username: {
            validators: {
              notEmpty: {
                message: message.username.notEmpty
              },
              stringLength: {
                min: 6,
                message: message.username.stringLength
              }
            }
          },
          email: {
            validators: {
              notEmpty: {
                message: message.email.notEmpty
              },
              stringLength: {
                min: 6,
                message: message.email.stringLength
              }
            }
          },
          'email-username': {
            validators: {
              notEmpty: {
                message: message.emailUsername.notEmpty
              },
              stringLength: {
                min: 6,
                message: message.emailUsername.stringLength
              }
            }
          },
          password: {
            validators: {
              notEmpty: {
                message: message.password.notEmpty
              },
              stringLength: {
                min: 6,
                message: message.password.stringLength
              }
            }
          },
          'confirm-password': {
            validators: {
              notEmpty: {
                message: message.confirmPassword.notEmpty
              },
              identical: {
                compare: function () {
                  return formAuthentication.querySelector('[name="password"]').value;
                },
                message: message.confirmPassword.identical
              },
              stringLength: {
                min: 6,
                message: message.confirmPassword.stringLength
              }
            }
          },
          'password_confirmation': {
            validators: {
              notEmpty: {
                message: message.confirmPassword.notEmpty
              },
              identical: {
                compare: function () {
                  return formAuthentication.querySelector('[name="password"]').value;
                },
                message: message.confirmPassword.identical
              },
              stringLength: {
                min: 6,
                message: message.confirmPassword.stringLength
              }
            }
          },
          'register-privacy-policy': {
            validators: {
              notEmpty: {
                message: message.terms.notEmpty
              }
            }
          },
            name: {
                validators: {
                notEmpty: {
                    message: message.full_name.notEmpty
                }
                }
            },
            address: {
                validators: {
                notEmpty: {
                    message: message.address.notEmpty
                }
                }
            },
            state: {
                validators: {
                notEmpty: {
                    message: message.state.notEmpty
                }
                }
            },
            country: {
                validators: {
                notEmpty: {
                    message: message.country.notEmpty
                }
                }
            },
            zip: {
                validators: {
                notEmpty: {
                    message: message.zip.notEmpty
                }
                }
            },
            date_of_birth: {
                validators: {
                notEmpty: {
                    message: message.date_of_birth.notEmpty
                }
                }
            },
            gender: {
                validators: {
                notEmpty: {
                    message: message.gender.notEmpty
                }
                }
            },
            mobile: {
                validators: {
                notEmpty: {
                    message: message.mobile.notEmpty
                }
                }
            },
        },
        plugins: {
          trigger: new FormValidation.plugins.Trigger(),
          bootstrap5: new FormValidation.plugins.Bootstrap5({
            eleValidClass: '',
            rowSelector: '.mb-3'
          }),
          submitButton: new FormValidation.plugins.SubmitButton(),

          defaultSubmit: new FormValidation.plugins.DefaultSubmit(),
          autoFocus: new FormValidation.plugins.AutoFocus()
        },
        init: instance => {
          instance.on('plugins.message.placed', function (e) {
            if (e.element.parentElement.classList.contains('input-group')) {
              e.element.parentElement.insertAdjacentElement('afterend', e.messageElement);
            }
          });
        }
      });
    }

    //  Two Steps Verification
    const numeralMask = document.querySelectorAll('.numeral-mask');

    // Verification masking
    if (numeralMask.length) {
      numeralMask.forEach(e => {
        new Cleave(e, {
          numeral: true
        });
      });
    }
  })();
});
