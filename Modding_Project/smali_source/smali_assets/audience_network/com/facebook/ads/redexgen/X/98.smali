.class public final Lcom/facebook/ads/redexgen/X/98;
.super Lcom/facebook/ads/redexgen/X/mS;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/99;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/5H;

.field public A02:Lcom/facebook/ads/redexgen/X/jM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/jM<",
            "Lcom/facebook/ads/redexgen/X/Ez;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/2Q;

.field public final A08:Lcom/facebook/ads/redexgen/X/oi;

.field public final A09:Lcom/facebook/ads/redexgen/X/4w;

.field public final A0A:Lcom/facebook/ads/redexgen/X/9U;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ca;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ed;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oi;Lcom/facebook/ads/redexgen/X/4w;Lcom/facebook/ads/redexgen/X/Ca;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/Ed;ILcom/facebook/ads/redexgen/X/jM;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Allow for passing a new drmSessionManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oi;",
            "Lcom/facebook/ads/redexgen/X/4w;",
            "Lcom/facebook/ads/redexgen/X/Ca;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/Ed;",
            "I",
            "Lcom/facebook/ads/redexgen/X/jM<",
            "Lcom/facebook/ads/redexgen/X/Ez;",
            ">;)V"
        }
    .end annotation

    .line 25098
    .local p7, "downloadExecutor":Lcom/facebook/ads/redexgen/X/jM;, "Lcom/google/common/base/Supplier<Lcom/facebook/ads/androidx/media3/exoplayer/util/ReleasableExecutor;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mS;-><init>()V

    .line 25099
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2Q;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/98;->A07:Lcom/facebook/ads/redexgen/X/2Q;

    .line 25100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/98;->A08:Lcom/facebook/ads/redexgen/X/oi;

    .line 25101
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/98;->A09:Lcom/facebook/ads/redexgen/X/4w;

    .line 25102
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/98;->A0B:Lcom/facebook/ads/redexgen/X/Ca;

    .line 25103
    if-nez p4, :cond_0

    sget-object p4, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/9U;

    :cond_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/98;->A0A:Lcom/facebook/ads/redexgen/X/9U;

    .line 25104
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/98;->A0C:Lcom/facebook/ads/redexgen/X/Ed;

    .line 25105
    iput p6, p0, Lcom/facebook/ads/redexgen/X/98;->A06:I

    .line 25106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A04:Z

    .line 25107
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/98;->A00:J

    .line 25108
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/98;->A02:Lcom/facebook/ads/redexgen/X/jM;

    .line 25109
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/oi;Lcom/facebook/ads/redexgen/X/4w;Lcom/facebook/ads/redexgen/X/Ca;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/Ed;ILcom/facebook/ads/redexgen/X/jM;Lcom/facebook/ads/redexgen/X/12;)V
    .locals 0

    .line 25110
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/98;-><init>(Lcom/facebook/ads/redexgen/X/oi;Lcom/facebook/ads/redexgen/X/4w;Lcom/facebook/ads/redexgen/X/Ca;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/Ed;ILcom/facebook/ads/redexgen/X/jM;)V

    return-void
.end method

.method private A00()V
    .locals 9

    .line 25111
    new-instance v1, Lcom/facebook/ads/redexgen/X/97;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/98;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/98;->A05:Z

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/98;->A03:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/98;->A08:Lcom/facebook/ads/redexgen/X/oi;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/97;-><init>(JZZZLjava/lang/Object;Lcom/facebook/ads/redexgen/X/oi;)V

    .line 25112
    .local v0, "timeline":Lcom/facebook/ads/androidx/media3/common/Timeline;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A04:Z

    if-eqz v0, :cond_0

    .line 25113
    new-instance v0, Lcom/facebook/ads/redexgen/X/12;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/12;-><init>(Lcom/facebook/ads/redexgen/X/98;Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    move-object v1, v0

    .line 25114
    :cond_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/mS;->A05(Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    .line 25115
    return-void
.end method


# virtual methods
.method public final A09()V
    .locals 0

    .line 25116
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 3

    .line 25117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/98;->A01:Lcom/facebook/ads/redexgen/X/5H;

    .line 25118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/98;->A0A:Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->AGK()V

    .line 25119
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/98;->A0A:Lcom/facebook/ads/redexgen/X/9U;

    .line 25120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mS;->A00()Lcom/facebook/ads/redexgen/X/7m;

    move-result-object v0

    .line 25121
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->AIu(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/7m;)V

    .line 25122
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/98;->A00()V

    .line 25123
    return-void
.end method

.method public final A5O(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/EO;J)Lcom/facebook/ads/redexgen/X/mM;
    .locals 16
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "PlayerId needs to be set"
    .end annotation

    .line 25124
    move-object/from16 v1, p0

    move-object v1, v1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A09:Lcom/facebook/ads/redexgen/X/4w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v5

    .line 25125
    .local v14, "dataSource":Lcom/facebook/ads/redexgen/X/nl;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A01:Lcom/facebook/ads/redexgen/X/5H;

    if-eqz v0, :cond_0

    .line 25126
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A01:Lcom/facebook/ads/redexgen/X/5H;

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 25127
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/9A;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A07:Lcom/facebook/ads/redexgen/X/2Q;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/98;->A0B:Lcom/facebook/ads/redexgen/X/Ca;

    sget-object v0, Lcom/facebook/ads/redexgen/X/7m;->A03:Lcom/facebook/ads/redexgen/X/7m;

    .line 25128
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Ca;->A5P(Lcom/facebook/ads/redexgen/X/7m;)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/98;->A0A:Lcom/facebook/ads/redexgen/X/9U;

    .line 25129
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/mS;->A01(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/9P;

    move-result-object v8

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/98;->A0C:Lcom/facebook/ads/redexgen/X/Ed;

    .line 25130
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/mS;->A02(Lcom/facebook/ads/redexgen/X/mL;)Lcom/facebook/ads/redexgen/X/CW;

    move-result-object v10

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A07:Lcom/facebook/ads/redexgen/X/2Q;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    iget v14, v1, Lcom/facebook/ads/redexgen/X/98;->A06:I

    .line 25131
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A02:Lcom/facebook/ads/redexgen/X/jM;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/98;->A02:Lcom/facebook/ads/redexgen/X/jM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/jM;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/Ez;

    :goto_0
    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/9A;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/Ed;Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/Cg;Lcom/facebook/ads/redexgen/X/EO;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ez;)V

    .line 25132
    return-object v3

    .line 25133
    :cond_1
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public final ABu()V
    .locals 0

    .line 25134
    return-void
.end method

.method public final AFH(JZZ)V
    .locals 3

    .line 25135
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/98;->A00:J

    .line 25136
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A04:Z

    if-nez v0, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/98;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A05:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A03:Z

    if-ne v0, p4, :cond_1

    .line 25137
    return-void

    .line 25138
    :cond_1
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/98;->A00:J

    .line 25139
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/98;->A05:Z

    .line 25140
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/98;->A03:Z

    .line 25141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/98;->A04:Z

    .line 25142
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/98;->A00()V

    .line 25143
    return-void
.end method

.method public final AH0(Lcom/facebook/ads/redexgen/X/mM;)V
    .locals 0

    .line 25144
    check-cast p1, Lcom/facebook/ads/redexgen/X/9A;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9A;->A0a()V

    .line 25145
    return-void
.end method
