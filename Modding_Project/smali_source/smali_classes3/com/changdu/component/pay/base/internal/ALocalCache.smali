.class public Lcom/changdu/component/pay/base/internal/ALocalCache;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;,
        Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field protected static TAG:Ljava/lang/String; = "ALocalCache"

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/changdu/component/pay/base/internal/ALocalCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mInstanceMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-object v2, p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    new-instance v1, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-wide v4, p2

    .line 28
    move v6, p4

    .line 29
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;-><init>(Lcom/changdu/component/pay/base/internal/ALocalCache;Ljava/io/File;JILcom/changdu/component/pay/base/internal/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v2, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    :catch_1
    :goto_1
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/changdu/component/pay/base/internal/ALocalCache;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Landroid/content/Context;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "ALocalCache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Ljava/io/File;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/changdu/component/pay/base/internal/ALocalCache;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 p0, 0x2faf080

    const v1, 0x7fffffff

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Ljava/io/File;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;)Lcom/changdu/component/pay/base/internal/ALocalCache;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Ljava/io/File;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;JI)Lcom/changdu/component/pay/base/internal/ALocalCache;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    :try_start_0
    sget-object v0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mInstanceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/changdu/component/pay/base/internal/ALocalCache;->myPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/changdu/component/pay/base/internal/ALocalCache;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/changdu/component/pay/base/internal/ALocalCache;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;-><init>(Ljava/io/File;JI)V

    .line 9
    sget-object p1, Lcom/changdu/component/pay/base/internal/ALocalCache;->mInstanceMap:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/changdu/component/pay/base/internal/ALocalCache;->myPid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 19
    .line 20
    const-string v3, "r"

    .line 21
    .line 22
    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    long-to-int v0, v3

    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww([B)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_4

    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->remove(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    :catch_3
    move-exception p1

    .line 73
    move-object v2, v1

    .line 74
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_4
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_2
    return-object v1

    .line 88
    :catchall_2
    move-exception p1

    .line 89
    move-object v1, v2

    .line 90
    :goto_3
    move-object v2, v1

    .line 91
    :goto_4
    if-eqz v2, :cond_4

    .line 92
    .line 93
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :catch_5
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_5
    throw p1
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsBinary(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsBinary(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsBinary(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsBinary(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([B)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsBinary(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :goto_2
    move-object v3, v0

    .line 41
    move-object v0, p1

    .line 42
    move-object p1, v3

    .line 43
    goto :goto_6

    .line 44
    :catch_2
    move-exception v2

    .line 45
    goto :goto_3

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    goto :goto_6

    .line 48
    :catch_3
    move-exception p1

    .line 49
    move-object v2, p1

    .line 50
    move-object p1, v0

    .line 51
    goto :goto_3

    .line 52
    :catchall_2
    move-exception p1

    .line 53
    move-object v1, v0

    .line 54
    move-object v0, p1

    .line 55
    move-object p1, v1

    .line 56
    goto :goto_2

    .line 57
    :catch_4
    move-exception v2

    .line 58
    move-object p1, v0

    .line 59
    move-object v1, p1

    .line 60
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :catch_5
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_4
    if-eqz p1, :cond_1

    .line 74
    .line 75
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :catch_6
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_5
    return-object v0

    .line 84
    :goto_6
    if-eqz v1, :cond_2

    .line 85
    .line 86
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 87
    .line 88
    .line 89
    goto :goto_7

    .line 90
    :catch_7
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_7
    if-eqz v0, :cond_3

    .line 95
    .line 96
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 97
    .line 98
    .line 99
    goto :goto_8

    .line 100
    :catch_8
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_8
    throw p1

    .line 105
    :cond_4
    return-object v0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 19
    .line 20
    new-instance v3, Ljava/io/FileReader;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    const-string v0, ""

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_5

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->remove(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    goto :goto_4

    .line 89
    :catch_3
    move-exception p1

    .line 90
    move-object v2, v1

    .line 91
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 92
    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_4
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_3
    return-object v1

    .line 105
    :catchall_2
    move-exception p1

    .line 106
    move-object v1, v2

    .line 107
    :goto_4
    move-object v2, v1

    .line 108
    :goto_5
    if-eqz v2, :cond_5

    .line 109
    .line 110
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :catch_5
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_6
    throw p1
.end method

.method public getAsStringWithNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 19
    .line 20
    new-instance v3, Ljava/io/FileReader;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    const-string v0, ""

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "\n"

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_5

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    invoke-static {v0}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_2
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->remove(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    goto :goto_4

    .line 98
    :catch_3
    move-exception p1

    .line 99
    move-object v2, v1

    .line 100
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catch_4
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_3
    return-object v1

    .line 114
    :catchall_2
    move-exception p1

    .line 115
    move-object v1, v2

    .line 116
    :goto_4
    move-object v2, v1

    .line 117
    :goto_5
    if-eqz v2, :cond_5

    .line 118
    .line 119
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :catch_5
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_6
    throw p1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 53
    invoke-static {p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 54
    invoke-static {p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 55
    invoke-static {p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 56
    invoke-static {p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    const/4 v0, -0x1

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 3

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;[BI)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :goto_1
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 49
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 50
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    return-void

    :goto_3
    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_2

    .line 51
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 52
    :catch_3
    :cond_2
    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 8
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 10
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    invoke-static {p2, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/io/File;)V

    :goto_2
    return-void

    :goto_3
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_2

    .line 13
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 14
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/io/File;)V

    .line 17
    throw p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-static {p3, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 21
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 0

    .line 22
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 19
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 20
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    if-nez v0, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 25
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 28
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 29
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 30
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 31
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    .line 33
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    invoke-static {p2, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/io/File;)V

    :goto_2
    return-void

    :goto_3
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_2

    .line 35
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/io/File;)V

    .line 39
    throw p2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 0

    .line 40
    invoke-static {p3, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache$Utils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I[B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/base/internal/ALocalCache;->mCache:Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/component/pay/base/internal/ALocalCache$ALocalCacheManager;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
