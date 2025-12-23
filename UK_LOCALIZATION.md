# UK Localization Changes

The application has been localized for the United Kingdom.

## Changes Made

### 1. Database Schema (Prisma)
**File:** `prisma/schema.prisma`

- Changed default location in `WasteDumped` model from:
  - `"Assam Downtown University, Guwahati, Assam, India"`
  - To: `"London, United Kingdom"`

**Migration Applied:** `20251204040456_update_location_to_uk`

### 2. UK Regions and Cities
**File:** `src/assets/StateList.tsx`

Replaced Indian states with UK regions:

**England:**
- London, Manchester, Birmingham, Liverpool, Leeds, Bristol, Sheffield, Newcastle

**Scotland:**
- Edinburgh, Glasgow, Aberdeen, Dundee, Inverness, Perth, Stirling

**Wales:**
- Cardiff, Swansea, Newport, Wrexham, Bangor, St Davids, Aberystwyth

**Northern Ireland:**
- Belfast, Derry, Lisburn, Newry, Armagh, Bangor, Craigavon

### 3. API Route Updates
**File:** `src/app/api/auth/register/route.ts`

- Updated validation messages from "state" to "region"
- Changed `"Select State"` check to `"Select Region"`
- Updated error messages to use UK terminology

## User Registration Flow

Users now select:
1. **Region** (England, Scotland, Wales, or Northern Ireland)
2. **City** (from the corresponding region's city list)

## Database Records

All new waste dump records will default to "London, United Kingdom" if no specific location is provided. Users can still specify custom locations with latitude/longitude coordinates.

## Testing

To test the UK localization:
1. Register a new user
2. Select a UK region (e.g., England)
3. Select a city (e.g., London)
4. Complete registration

The system will store the region in the `state` field and city in the `city` field for backwards compatibility with the existing database schema.
