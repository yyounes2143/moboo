.class public Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/webviewcache/config/CacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:I

.field public e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x6400000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->c:J

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/32 v2, 0x100000

    .line 18
    .line 19
    .line 20
    div-long/2addr v0, v2

    .line 21
    long-to-int v0, v0

    .line 22
    const/16 v1, 0x200

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    const/high16 v0, 0xf00000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v1, 0x100

    .line 31
    .line 32
    if-lt v0, v1, :cond_1

    .line 33
    .line 34
    const/high16 v0, 0xa00000

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v1, 0x80

    .line 38
    .line 39
    if-le v0, v1, :cond_2

    .line 40
    .line 41
    const/high16 v0, 0x500000

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    iput v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->d:I

    .line 46
    .line 47
    new-instance v0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "CDWebViewCache"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_1
    iput v2, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->b:I

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public build()Lcom/changdu/component/webviewcache/config/CacheConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/webviewcache/config/CacheConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/changdu/component/webviewcache/config/CacheConfig;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->b:I

    .line 11
    .line 12
    iput v1, v0, Lcom/changdu/component/webviewcache/config/CacheConfig;->b:I

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->c:J

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/changdu/component/webviewcache/config/CacheConfig;->c:J

    .line 17
    .line 18
    iget-object v1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/changdu/component/webviewcache/config/CacheConfig;->e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 21
    .line 22
    iget v1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->d:I

    .line 23
    .line 24
    iput v1, v0, Lcom/changdu/component/webviewcache/config/CacheConfig;->d:I

    .line 25
    .line 26
    return-object v0
.end method

.method public setCacheDir(Ljava/lang/String;)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDiskCacheSize(J)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtensionFilter(Lcom/changdu/component/webviewcache/config/MimeTypeFilter;)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->e:Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMemoryCacheSize(I)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setVersion(I)Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/webviewcache/config/CacheConfig$Builder;->b:I

    .line 2
    .line 3
    return-object p0
.end method
