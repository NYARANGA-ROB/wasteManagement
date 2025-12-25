-- CreateTable
CREATE TABLE `users` (
    `id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `isVerified` BOOLEAN NOT NULL DEFAULT false,
    `isWorker` BOOLEAN NOT NULL DEFAULT false,
    `profilePicture` TEXT NOT NULL DEFAULT 'https://i.pinimg.com/564x/58/79/29/5879293da8bd698f308f19b15d3aba9a.jpg',
    `userDescription` TEXT NOT NULL DEFAULT 'Lets join hands to make earth green.',
    `city` VARCHAR(191) NOT NULL DEFAULT '',
    `state` VARCHAR(191) NOT NULL DEFAULT '',
    `totalPointsEarned` INTEGER NOT NULL DEFAULT 0,
    `forgotPasswordToken` TEXT NULL,
    `forgotPasswordTokenExpiry` VARCHAR(191) NULL,
    `verifyToken` TEXT NULL,
    `verifyTokenExpiry` DATETIME(3) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `users_username_key`(`username`),
    UNIQUE INDEX `users_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `waste_dumped` (
    `id` VARCHAR(191) NOT NULL,
    `wasteNameByAi` VARCHAR(191) NULL,
    `wasteType` VARCHAR(191) NULL,
    `wastePoints` INTEGER NOT NULL DEFAULT 0,
    `isRecyleable` BOOLEAN NOT NULL DEFAULT false,
    `day` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `location` TEXT NOT NULL DEFAULT 'Assam Downtown University, Guwahati, Assam, India',
    `latitude` DOUBLE NULL,
    `longitude` DOUBLE NULL,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    INDEX `waste_dumped_userId_idx`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `coupons` (
    `id` VARCHAR(191) NOT NULL,
    `service` VARCHAR(191) NOT NULL,
    `discount` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `expiryDate` DATETIME(3) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    INDEX `coupons_userId_idx`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `waste_dumped` ADD CONSTRAINT `waste_dumped_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `coupons` ADD CONSTRAINT `coupons_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
