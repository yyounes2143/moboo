.class public final Lcom/facebook/ads/redexgen/X/BT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BQ;,
        Lcom/facebook/ads/redexgen/X/BS;,
        Lcom/facebook/ads/redexgen/X/BO;,
        Lcom/facebook/ads/redexgen/X/mY;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Lcom/facebook/ads/redexgen/X/Bv;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ">;"
        }
    .end annotation
.end field

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Landroid/content/Context;

.field public final A0B:Landroid/os/Handler;

.field public final A0C:Lcom/facebook/ads/redexgen/X/BQ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/mT;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Br;

.field public final A0F:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/BS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 617
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pVyOFxmsQ66MTtm1tfRFfgviAXYtJVde"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2uUwIcomsi7SFa7PXkK2f37odc1wLlYz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QkwYj4Lqiyfn1sjUd74ET1yWKOC2yQQp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dFCgemChCTNfDzsLBkcDawIxAoCNtdjt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sEgyiM3VxaELP8J5ElL8PsjgrXzRWZa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oraRcW9NweHiYSV9WAd4vPrbGQ1KpHw2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RucdtTHsidUdQvrsj3emf0t2ky4JUHkt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bkvUCljONwekC27QIXEAtZgyfnOfNHe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BT;->A03()V

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    invoke-direct {v0, v1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/BT;->A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/4m;Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/4w;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 31134
    new-instance v2, Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {v2, p2}, Lcom/facebook/ads/redexgen/X/9H;-><init>(Lcom/facebook/ads/redexgen/X/4m;)V

    nop

    new-instance v0, Lcom/facebook/ads/redexgen/X/ix;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ix;-><init>()V

    .line 31135
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ix;->A06(Lcom/facebook/ads/redexgen/X/Ln;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object v0

    .line 31136
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/ix;->A05(Lcom/facebook/ads/redexgen/X/4w;)Lcom/facebook/ads/redexgen/X/ix;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/mc;

    invoke-direct {v0, v1, p5}, Lcom/facebook/ads/redexgen/X/mc;-><init>(Lcom/facebook/ads/redexgen/X/ix;Ljava/util/concurrent/Executor;)V

    .line 31137
    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/BT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/mT;Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 31138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/mT;Lcom/facebook/ads/redexgen/X/Bh;)V
    .locals 12

    .line 31139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0A:Landroid/content/Context;

    .line 31141
    move-object v6, p2

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Lcom/facebook/ads/redexgen/X/mT;

    .line 31142
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    .line 31143
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    .line 31144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Z

    .line 31145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    .line 31146
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31147
    new-instance v0, Lcom/facebook/ads/redexgen/X/BM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/BM;-><init>(Lcom/facebook/ads/redexgen/X/BT;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v8

    .line 31148
    .local v1, "mainHandler":Landroid/os/Handler;
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Landroid/os/Handler;

    .line 31149
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BT;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/HandlerThread;

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31150
    .local v3, "internalThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 31151
    new-instance v4, Lcom/facebook/ads/redexgen/X/BQ;

    iget v9, p0, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    iget v10, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Z

    move-object v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/BQ;-><init>(Landroid/os/HandlerThread;Lcom/facebook/ads/redexgen/X/mT;Lcom/facebook/ads/redexgen/X/Bh;Landroid/os/Handler;IIZ)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Lcom/facebook/ads/redexgen/X/BQ;

    .line 31152
    new-instance v2, Lcom/facebook/ads/redexgen/X/mb;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/mb;-><init>(Lcom/facebook/ads/redexgen/X/BT;)V

    .line 31153
    .local v2, "requirementsListener":Lcom/facebook/ads/redexgen/X/Br;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Lcom/facebook/ads/redexgen/X/Br;

    .line 31154
    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0I:Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bv;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Bv;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Br;Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:Lcom/facebook/ads/redexgen/X/Bv;

    .line 31155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:I

    .line 31156
    iput v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    .line 31157
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Lcom/facebook/ads/redexgen/X/BQ;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:I

    .line 31158
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/BQ;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31160
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/B8;Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJ)Lcom/facebook/ads/redexgen/X/B8;
    .locals 8

    .line 31161
    iget v2, p0, Lcom/facebook/ads/redexgen/X/B8;->A02:I

    .line 31162
    .local v1, "state":I
    const/4 v1, 0x5

    move-wide v6, p3

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/B8;->A02()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31163
    :cond_0
    move-wide v4, v6

    .line 31164
    .local p0, "startTimeMs":J
    :goto_0
    move p2, p2

    if-eq v2, v1, :cond_1

    const/4 v0, 0x7

    if-ne v2, v0, :cond_2

    .line 31165
    :cond_1
    const/4 v3, 0x7

    .line 31166
    :goto_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/B8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B8;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 31167
    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v2

    const-wide/16 p0, -0x1

    const/4 p3, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/B8;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    .line 31168
    return-object v1

    .line 31169
    :cond_2
    if-eqz p2, :cond_3

    .line 31170
    const/4 v3, 0x1

    goto :goto_1

    .line 31171
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 31172
    :cond_4
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/B8;->A05:J

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const-string v1, "Q4q55Cq4Bi7IKuCSPoembBRK5ZQkCbyv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 31173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const-string v1, "SmTtusU6hPZNCMRD5EytmTKQlQAuGgF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "GYCdxmdyxLWQsNM7s6qdd5Bkhe8SJ7C"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/BS;

    .line 31174
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/BS;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Z

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/BS;->AFv(Lcom/facebook/ads/redexgen/X/BT;Z)V

    .line 31175
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31176
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BT;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x22t
        0x1ft
        0x8t
        0x37t
        0xbt
        0x6t
        0x1et
        0x2t
        0x15t
        0x5dt
        0x23t
        0x8t
        0x10t
        0x9t
        0xbt
        0x8t
        0x6t
        0x3t
        0x2at
        0x6t
        0x9t
        0x6t
        0x0t
        0x2t
        0x15t
    .end array-data
.end method

.method private A04(II)V
    .locals 2

    .line 31177
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    .line 31178
    iput p2, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    .line 31179
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BS;

    .line 31181
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/BS;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/BS;->ADS(Lcom/facebook/ads/redexgen/X/BT;)V

    .line 31182
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31183
    :cond_0
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/BO;)V
    .locals 7

    .line 31184
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/BO;->A02:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    .line 31185
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/BO;->A00:Lcom/facebook/ads/redexgen/X/B8;

    .line 31186
    .local v0, "updatedDownload":Lcom/facebook/ads/redexgen/X/B8;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()Z

    move-result v6

    .line 31187
    .local v1, "waitingForRequirementsChanged":Z
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/BO;->A03:Z

    if-eqz v0, :cond_0

    .line 31188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BS;

    .line 31189
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/BS;
    invoke-interface {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/BS;->AD4(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/B8;)V

    .line 31190
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31191
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const-string v1, "ysMk9cu0SrkjVTb8eZ5DX1SyqV41ya5j"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/BS;

    .line 31192
    .restart local v3    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/BO;->A01:Ljava/lang/Exception;

    invoke-interface {v1, p0, v5, v0}, Lcom/facebook/ads/redexgen/X/BS;->AD3(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/B8;Ljava/lang/Exception;)V

    .line 31193
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_1

    .line 31194
    :cond_1
    if-eqz v6, :cond_2

    .line 31195
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A02()V

    .line 31196
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/redexgen/X/Bv;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BT;->A07(Lcom/facebook/ads/redexgen/X/Bv;I)V

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Bv;I)V
    .locals 4

    .line 31197
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Bv;->A0A()Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v3

    .line 31198
    .local v0, "requirements":Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:I

    if-eq v0, p2, :cond_0

    .line 31199
    iput p2, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:I

    .line 31200
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    .line 31201
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Lcom/facebook/ads/redexgen/X/BQ;

    .line 31202
    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/BQ;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31203
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31204
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()Z

    move-result v2

    .line 31205
    .local v1, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BS;

    .line 31206
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/BS;
    invoke-interface {v0, p0, v3, p2}, Lcom/facebook/ads/redexgen/X/BS;->AEy(Lcom/facebook/ads/redexgen/X/BT;Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;I)V

    .line 31207
    .end local v3    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31208
    :cond_1
    if-eqz v2, :cond_2

    .line 31209
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A02()V

    .line 31210
    :cond_2
    return-void
.end method

.method private A08(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ">;)V"
        }
    .end annotation

    .line 31211
    .local p1, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Z

    .line 31212
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    .line 31213
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()Z

    move-result v2

    .line 31214
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/BS;

    .line 31215
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/BS;
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/BS;->ADX(Lcom/facebook/ads/redexgen/X/BT;)V

    .line 31216
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31217
    :cond_0
    if-eqz v2, :cond_1

    .line 31218
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A02()V

    .line 31219
    :cond_1
    return-void
.end method

.method private A09(Z)V
    .locals 3

    .line 31220
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Z

    if-ne v0, p1, :cond_0

    .line 31221
    return-void

    .line 31222
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Z

    .line 31223
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    .line 31224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Lcom/facebook/ads/redexgen/X/BQ;

    .line 31225
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/facebook/ads/redexgen/X/BQ;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 31226
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()Z

    move-result v2

    .line 31228
    .local v0, "waitingForRequirementsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31229
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/BS;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/BS;
    goto :goto_0

    .line 31230
    :cond_1
    if-eqz v2, :cond_2

    .line 31231
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A02()V

    .line 31232
    :cond_2
    return-void
.end method

.method private A0A()Z
    .locals 4

    .line 31233
    const/4 v2, 0x0

    .line 31234
    .local v0, "waitingForRequirements":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:I

    if-eqz v0, :cond_0

    .line 31235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 31236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B8;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/B8;->A02:I

    if-nez v0, :cond_2

    .line 31237
    const/4 v2, 0x1

    .line 31238
    .end local v1    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Z

    if-eq v0, v2, :cond_1

    const/4 v3, 0x1

    .line 31239
    .local v1, "waitingForRequirementsChanged":Z
    :goto_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31240
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 31241
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31242
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const-string v1, "HT4e9GATQ3DYWsFwZyJzXpwOkn6HfQP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "eDZDx6DsGZ1y85uRp2IzKIBDtNa9GCG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method private A0B(Landroid/os/Message;)Z
    .locals 5

    .line 31243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31244
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31245
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/BO;

    .line 31246
    .local v0, "update":Lcom/facebook/ads/redexgen/X/BO;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BT;->A05(Lcom/facebook/ads/redexgen/X/BO;)V

    .line 31247
    goto :goto_0

    .line 31248
    .end local v0    # "update":Lcom/facebook/ads/redexgen/X/BO;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 31249
    .local v0, "processedMessageCount":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    .line 31250
    .local v1, "activeTaskCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0H:[Ljava/lang/String;

    const-string v1, "sxyw1qPQ7JLPTOY8e9sgs42WDZnpuN2t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "KeBMIxstq15Te8zzUw5dJy9ueqCuctUt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/BT;->A04(II)V

    .line 31251
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31252
    .end local v0    # "processedMessageCount":I
    .end local v1    # "activeTaskCount":I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 31253
    .local v0, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BT;->A08(Ljava/util/List;)V

    .line 31254
    .end local v0    # "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/BT;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BT;->A0B(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ">;"
        }
    .end annotation

    .line 31255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:Ljava/util/List;

    return-object v0
.end method

.method public final A0E()V
    .locals 1

    .line 31256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BT;->A09(Z)V

    .line 31257
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/BS;)V
    .locals 1

    .line 31258
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 31260
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)V
    .locals 1

    .line 31261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/BT;->A0H(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V

    .line 31262
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 3

    .line 31263
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    .line 31264
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Lcom/facebook/ads/redexgen/X/BQ;

    .line 31265
    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p2, v0, p1}, Lcom/facebook/ads/redexgen/X/BQ;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 31266
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31267
    return-void
.end method

.method public final A0I()Z
    .locals 1

    .line 31268
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
