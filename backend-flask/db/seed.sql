-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('josephkay','ogunmolakay@outlook.com' , 'josephkay' ,'2641a6f0-e09e-4389-92c9-f05668b7c665'),
  ('Andrew Bayko','josephcrypto98@gmail.com' , 'bayko' ,'2e26d104-50b9-4fa3-bb09-708abe9fd04a'),
  ('Londo Mollari','lmollari@centari.com' , 'londo' ,'MOCK');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'josephkay' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )