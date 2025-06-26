#!/bin/bash
echo "🚀 Eseguo migrate..."
python manage.py migrate

echo "👤 Creo superuser automatico..."
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'adminpass')" | python manage.py shell

echo "✅ Fatto!"
