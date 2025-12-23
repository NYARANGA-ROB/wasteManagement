# MySQL Setup Guide

The app has been migrated from MongoDB to MySQL using Prisma ORM.

## Prerequisites

1. Install MySQL Server 8.0 or later
   - Download from: https://dev.mysql.com/downloads/mysql/
   - Or use XAMPP, WAMP, or MAMP for an all-in-one solution

## Setup Steps

### 1. Create the Database

Open MySQL command line or MySQL Workbench and run:

```sql
CREATE DATABASE wasteeasy;
```

### 2. Configure Environment Variables

Create a `.env` file in the root directory (copy from `.env.example`):

```env
DATABASE_URL="mysql://root:YOUR_PASSWORD@localhost:3306/wasteeasy"
NEXT_PUBLIC_JWT_TOKEN="your-secret-jwt-token"
NEXT_PUBLIC_DOMAIN="http://localhost:3000"

# Optional: Configure if you want email functionality
NEXT_PUBLIC_EMAIL_SERVICE="gmail"
NEXT_PUBLIC_EMAIL="your-email@gmail.com"
NEXT_PUBLIC_EMAIL_PASSWORD="your-app-password"

# Optional: For AI features
NEXT_PUBLIC_GEMINI_API_KEY="your-gemini-api-key"

# Optional: For maps
NEXT_PUBLIC_GOOGLE_MAPS_API_KEY="your-google-maps-key"

# Optional: For EmailJS
NEXT_PUBLIC_SERVICE_ID=""
NEXT_PUBLIC_TEMPLATE_ID=""
NEXT_PUBLIC_PUBLIC_KEY=""
```

Replace:
- `YOUR_PASSWORD` with your MySQL root password
- `your-secret-jwt-token` with a random secure string (e.g., use `node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"`)

### 3. Run Database Migrations

This will create all the necessary tables in your MySQL database:

```bash
npx prisma migrate dev --name init
```

### 4. (Optional) Seed the Database

If you want to add sample data:

```bash
npx prisma db seed
```

### 5. View Database (Optional)

To open Prisma Studio and view/edit your database:

```bash
npx prisma studio
```

## Database Schema

The app uses the following tables:

- **users** - User accounts with authentication
- **waste_dumped** - Records of waste disposal by users
- **coupons** - Reward coupons earned by users

All relationships are properly configured with foreign keys and cascading deletes.

## Troubleshooting

### Connection Errors

If you get connection errors:

1. Ensure MySQL server is running
2. Check username/password in DATABASE_URL
3. Verify database exists: `SHOW DATABASES;` in MySQL
4. Check MySQL is running on port 3306

### Migration Errors

If migrations fail:

```bash
# Reset the database (WARNING: This deletes all data)
npx prisma migrate reset

# Then try again
npx prisma migrate dev
```

## Development Commands

```bash
# Generate Prisma Client (after schema changes)
npx prisma generate

# Create a new migration
npx prisma migrate dev --name description_of_change

# Apply pending migrations
npx prisma migrate deploy

# Reset database (dev only)
npx prisma migrate reset
```
