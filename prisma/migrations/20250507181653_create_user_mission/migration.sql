-- CreateTable
CREATE TABLE `user_mission` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `mission_id` INTEGER NOT NULL,
    `isFinished` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `user_mission` ADD CONSTRAINT `user_mission_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `user_mission` ADD CONSTRAINT `user_mission_mission_id_fkey` FOREIGN KEY (`mission_id`) REFERENCES `mission`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
