-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('josephkay','ogunmolakay@outlook.com' , 'josephkay' ,'MOCK'),
  ('Andrew Bayko','josephcrypto98@gmail.com' , 'bayko' ,'MOCK'),
  ('Londo Mollari','lmollari@centari.com' , 'londo' ,'MOCK');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'josephkay' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )