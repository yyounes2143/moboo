.class public final Lcom/tencent/rtmp/a/a;
.super Lcom/tencent/rtmp/TXImageSprite;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/a/a$c;,
        Lcom/tencent/rtmp/a/a$b;,
        Lcom/tencent/rtmp/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/BitmapFactory$Options;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/TXImageSprite;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tencent/rtmp/a/a;->a:Landroid/graphics/BitmapFactory$Options;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/tencent/rtmp/a/a;->e:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/tencent/rtmp/a/a;->e:Ljava/util/Map;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 9
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    const/16 v0, 0x3a98

    .line 10
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 11
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/rtmp/a/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "TXImageSprite"

    const-string v1, " remove all tasks!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp/a/a$1;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp/a/a$1;-><init>(Lcom/tencent/rtmp/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/tencent/rtmp/a/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/rtmp/a/a;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/rtmp/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/rtmp/a/a;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getThumbnail(F)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    sub-int v3, v0, v2

    .line 21
    .line 22
    div-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    add-int/2addr v3, v2

    .line 25
    iget-object v4, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/tencent/rtmp/a/a$c;

    .line 32
    .line 33
    iget v4, v4, Lcom/tencent/rtmp/a/a$c;->a:F

    .line 34
    .line 35
    cmpg-float v4, v4, p1

    .line 36
    .line 37
    if-gtz v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/tencent/rtmp/a/a$c;

    .line 46
    .line 47
    iget v4, v4, Lcom/tencent/rtmp/a/a$c;->b:F

    .line 48
    .line 49
    cmpl-float v4, v4, p1

    .line 50
    .line 51
    if-lez v4, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/tencent/rtmp/a/a$c;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    if-lt v2, v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/tencent/rtmp/a/a$c;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lcom/tencent/rtmp/a/a$c;

    .line 80
    .line 81
    iget v4, v4, Lcom/tencent/rtmp/a/a$c;->b:F

    .line 82
    .line 83
    cmpl-float v4, p1, v4

    .line 84
    .line 85
    if-ltz v4, :cond_3

    .line 86
    .line 87
    add-int/lit8 v2, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->d:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/tencent/rtmp/a/a$c;

    .line 97
    .line 98
    iget v0, v0, Lcom/tencent/rtmp/a/a$c;->a:F

    .line 99
    .line 100
    cmpg-float v0, p1, v0

    .line 101
    .line 102
    if-gez v0, :cond_4

    .line 103
    .line 104
    add-int/lit8 v0, v3, -0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move-object p1, v1

    .line 108
    :goto_1
    if-nez p1, :cond_5

    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_5
    iget-object v0, p1, Lcom/tencent/rtmp/a/a$c;->d:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/tencent/rtmp/a/a;->e:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 120
    .line 121
    if-nez v0, :cond_6

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    iget v2, p1, Lcom/tencent/rtmp/a/a$c;->e:I

    .line 130
    .line 131
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget v3, p1, Lcom/tencent/rtmp/a/a$c;->f:I

    .line 134
    .line 135
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 136
    .line 137
    iget v4, p1, Lcom/tencent/rtmp/a/a$c;->g:I

    .line 138
    .line 139
    add-int/2addr v2, v4

    .line 140
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    iget p1, p1, Lcom/tencent/rtmp/a/a$c;->h:I

    .line 143
    .line 144
    add-int/2addr v3, p1

    .line 145
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 146
    .line 147
    iget-object p1, p0, Lcom/tencent/rtmp/a/a;->a:Landroid/graphics/BitmapFactory$Options;

    .line 148
    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/rtmp/a/a;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x12

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final setVTTUrlAndImageUrls(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "TXImageSprite"

    .line 8
    .line 9
    const-string p2, "setVTTUrlAndImageUrls: vttUrl can\'t be null!"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/a/a;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    .line 23
    .line 24
    const-string v1, "SuperVodThumbnailsWorkThread"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/rtmp/a/a;->b:Landroid/os/HandlerThread;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v1, Lcom/tencent/rtmp/a/a$a;

    .line 50
    .line 51
    invoke-direct {v1, p0, p1}, Lcom/tencent/rtmp/a/a$a;-><init>(Lcom/tencent/rtmp/a/a;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/tencent/rtmp/a/a;->c:Landroid/os/Handler;

    .line 82
    .line 83
    new-instance v2, Lcom/tencent/rtmp/a/a$b;

    .line 84
    .line 85
    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/rtmp/a/a$b;-><init>(Lcom/tencent/rtmp/a/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method
