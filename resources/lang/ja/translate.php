<?php

return [
	// ログインページ
	'welcome_message' => 'The ' . config('variables.templateName') . 'へようこそ！ 👋',
	'welcome_short_message' => 'アカウントにサインインして冒険を開始してください',
	'email_or_username' => 'メールアドレスまたはユーザー名',
	'password' => 'パスワード',
	'forgot_password' => 'パスワードをお忘れですか？',
	'remember_me' => 'ログイン情報を保存する',
	'login' => 'サインイン',
	'new_on_our_platform' => '当社のプラットフォームで新しいですか？',
	'create_an_account' => 'アカウントを作成',
	'or' => 'または',
	'minutes_left' => '分残り',
	'login_forbidden' => '管理者によってログインが制限されています。 利用可能になったらもう一度お試しください。',
	'login_unavailable' => 'ログイン制限中！ 😢',
	'login_unavailable_details' =>
		'すべてのユーザーのアクセスが制限されています。システム管理者のみログインが許可されています。私たちが考えを変えるまでお待ちください。ありがとうございます',

	// パスワードをお忘れの場合
	'forgot_password_text' => 'メールアドレスを入力すると、パスワードをリセットするための手順をお送りします',
	'email' => 'メールアドレス',
	'send_password_reset_link' => 'パスワードリセットリンクを送信',
	'back_to_login' => 'ログインに戻る',
	// パスワードをリセット
	'reset_password' => 'パスワードをリセット',
	'reset_password_text' => '新しいパスワードは以前に使用したパスワードと異なる必要があります',
	'new_password' => '新しいパスワード',
	'confirm_password' => 'パスワードを確認',
	'password_reset_success' => 'パスワードのリセットに成功しました！',
	'password_reset_success_text' => 'パスワードのリセットに成功しました。 新しいパスワードでログインしてください。',
	'invalid_token' => 'トークンの有効期限が切れているか、無効です。 もう一度お試しください。',
	// メールアドレスを確認
	'verify_email' => 'メールアドレスを確認',
	'verify_email_text_1' => '登録したメールアドレスにリンクを送信しました',
	'verify_email_text_2' => '続行するためにリンクをクリックしてください。',
	'verify_mail_sent' => '新しい確認メールを送信しました！',
	'verify_mail_send_text_1' =>
		'このアカウントに関連付けられた新しいメール確認リンクを送信しました。受信できない場合はスパムフォルダを確認してください。',
	'did_not_receive_email' => 'メールが届かない場合は？',
	'resend' => '再送信',
	'logout' => 'ログアウト',
	'skip_for_now' => '今はスキップ',
	// 登録ページ
	'register' => '冒険はここから始まります',
	'register_text' => 'あなたの人生を蝶のように滑らかにしましょう！',
	'username' => 'ユーザー名',
	'full_name' => 'フルネーム',
	'mobile_number' => '携帯電話番号',
	'retype_password' => 'パスワードを再入力してください',
	'i_agree_to_the' => '私は同意します',
	'terms_and_conditions' => 'プライバシーポリシーと利用規約',
	'sign_up' => 'サインアップ',
	'already_have_an_account' => 'すでにアカウントをお持ちですか？',
	'sign_in_instead' => '代わりにサインイン',
	'registration_unavailable' => '登録終了',
	'registration_unavailable_details' =>
		'申し訳ありませんが、現在新規ユーザーの受け付けをしていません。当社の既存ユーザーからの招待状がサインアップの希望を満たすかもしれません。それ以外の場合は、私たちが考えを変えるまでお待ちいただくか、感謝します',
	'address' => '住所',
	'state_city' => '州/市',
	'zip' => '郵便番号',
	'gender' => '性別',
	'date_of_birth' => '生年月日',
	'country' => '国',
	'gender_male' => '男性',
	'gender_female' => '女性',
	'gender_others' => 'その他',
];
