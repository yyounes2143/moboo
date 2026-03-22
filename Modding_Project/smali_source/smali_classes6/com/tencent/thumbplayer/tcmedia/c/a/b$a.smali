.class Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/a/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(JJLjava/lang/String;II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a(JJ)Z

    move-result v6

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/c/a/d;-><init>(JJIZ)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->b(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->a(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-virtual {p1, p6, p5}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->c(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoaderListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoaderListener;->shouldWaitForLoadingOfRequestedResource(Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoadingRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/b;Lcom/tencent/thumbplayer/tcmedia/c/a/d;)V

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "add to mLoadingRequests, requestId: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(JJ)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    add-long/2addr p3, p1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->e(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)V

    :cond_1
    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "mCallbackForResourceLoaderHandler msg : "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/b;)Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoaderListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/16 v1, 0x100

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x101

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "stop read data"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    .line 54
    .line 55
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/b;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "start read data"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$b;

    .line 73
    .line 74
    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$b;->a:J

    .line 75
    .line 76
    iget-wide v4, v0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$b;->b:J

    .line 77
    .line 78
    iget-object v6, v0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$b;->c:Ljava/lang/String;

    .line 79
    .line 80
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 83
    .line 84
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "start read data, requestStart: "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, " requestEnd:"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " requestId:"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    .line 122
    .line 123
    invoke-static {p1, v2, v3, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/c/a/b;JJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    const-wide/16 v0, 0x0

    .line 128
    .line 129
    cmp-long p1, v4, v0

    .line 130
    .line 131
    if-gtz p1, :cond_3

    .line 132
    .line 133
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;->d()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "requestLength invalid, check requestStart and requestEnd"

    .line 138
    .line 139
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    move-object v1, p0

    .line 144
    invoke-direct/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/c/a/b$a;->a(JJLjava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
