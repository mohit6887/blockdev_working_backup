MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Memory Allocation");
#ifndef MAJORNO 
#define MAJORNO 0
#endif

#ifndef BDDNAME
#define BDDNAME "BDD6.x"
#endif
//extern char *blkdev_catalog;
struct blkdev
{
	struct list_head link;
//	sector_t capacity; /*Device size in sectors */
//	u8 *data;
//#ifdef CONFIG_SBLKDEV_REQUESTS_BASED
//	struct blkl_mq_tag_set tag_set;
//#endif
//	struct gendisk *disk;
};

extern int majorno;
extern struct blkdev *dev;
