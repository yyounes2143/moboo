.class final Lcom/tencent/liteav/a$b;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Field;

.field private i:Ljava/lang/reflect/Field;

.field private j:Ljava/lang/reflect/Field;

.field private k:Ljava/lang/reflect/Field;

.field private l:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const-string p1, "com.tencent.trtc.TRTCCloudDef$TRTCTexture"

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->b:Ljava/lang/Class;

    .line 17
    .line 18
    const-string p1, "com.tencent.trtc.TRTCCloudDef$TRTCVideoFrame"

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->b:Ljava/lang/Class;

    .line 27
    .line 28
    const-string v0, "textureId"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->d:Ljava/lang/reflect/Field;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->b:Ljava/lang/Class;

    .line 37
    .line 38
    const-string v0, "eglContext10"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->e:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 47
    .line 48
    const-string v0, "texture"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->g:Ljava/lang/reflect/Field;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 57
    .line 58
    const-string v0, "width"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->h:Ljava/lang/reflect/Field;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 67
    .line 68
    const-string v0, "height"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->i:Ljava/lang/reflect/Field;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 77
    .line 78
    const-string v0, "pixelFormat"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->j:Ljava/lang/reflect/Field;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 87
    .line 88
    const-string v0, "bufferType"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->k:Ljava/lang/reflect/Field;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 97
    .line 98
    const-string v0, "timestamp"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->l:Ljava/lang/reflect/Field;

    .line 105
    .line 106
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/16 v0, 0x11

    .line 111
    .line 112
    if-lt p1, v0, :cond_0

    .line 113
    .line 114
    iget-object p1, p0, Lcom/tencent/liteav/a$b;->b:Ljava/lang/Class;

    .line 115
    .line 116
    const-string v0, "eglContext14"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/tencent/liteav/a$b;->f:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    return-void

    .line 125
    :catch_0
    move-exception p1

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    return-void

    .line 128
    :goto_0
    const-string v0, "TXCVodPlayer"

    .line 129
    .line 130
    const-string v1, "init TRTCCloudClassInvokeWrapper error "

    .line 131
    .line 132
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/a$b;->b:Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/tencent/liteav/a$b;->d:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    instance-of v4, v4, Ljavax/microedition/khronos/egl/EGLContext;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/tencent/liteav/a$b;->e:Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/tencent/liteav/a$b;->f:Ljava/lang/reflect/Field;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v4, p0, Lcom/tencent/liteav/a$b;->c:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lcom/tencent/liteav/a$b;->g:Ljava/lang/reflect/Field;

    .line 59
    .line 60
    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/tencent/liteav/a$b;->h:Ljava/lang/reflect/Field;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/tencent/liteav/a$b;->i:Ljava/lang/reflect/Field;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/tencent/liteav/a$b;->j:Ljava/lang/reflect/Field;

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lcom/tencent/liteav/a$b;->k:Ljava/lang/reflect/Field;

    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/tencent/liteav/a$b;->l:Ljava/lang/reflect/Field;

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {p2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/tencent/liteav/a$b;->a:Ljava/lang/Class;

    .line 118
    .line 119
    const-string v3, "sendCustomVideoData"

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-array v6, v2, [Ljava/lang/Class;

    .line 126
    .line 127
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    aput-object v7, v6, v1

    .line 130
    .line 131
    aput-object v5, v6, v0

    .line 132
    .line 133
    invoke-virtual {p2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object v3, v2, v1

    .line 144
    .line 145
    aput-object v4, v2, v0

    .line 146
    .line 147
    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :goto_1
    const-string p2, "TXCVodPlayer"

    .line 152
    .line 153
    const-string v0, "sendCustomVideoData method error "

    .line 154
    .line 155
    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method
