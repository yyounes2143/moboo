.class public final synthetic Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore;->createTrashRequest(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
