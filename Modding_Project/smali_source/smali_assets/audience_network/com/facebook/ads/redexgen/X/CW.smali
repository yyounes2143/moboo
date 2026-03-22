.class public final Lcom/facebook/ads/redexgen/X/CW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CV;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/mL;

.field public final A02:J

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/CV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 32910
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CW;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/mL;J)V

    .line 32911
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/mL;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/CV;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "J)V"
        }
    .end annotation

    .line 32912
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32913
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32914
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:I

    .line 32915
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Lcom/facebook/ads/redexgen/X/mL;

    .line 32916
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:J

    .line 32917
    return-void
.end method

.method private A00(J)J
    .locals 5

    .line 32918
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v3

    .line 32919
    .local v0, "mediaTimeMs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:J

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;I)V
    .locals 8
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1768"
    .end annotation

    .line 32920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CV;

    .line 32921
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32922
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/CS;

    move-object v3, p0

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/CS;-><init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;I)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 32923
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/CX;
    goto :goto_0

    .line 32924
    :cond_0
    return-void
.end method


# virtual methods
.method public final A02(ILcom/facebook/ads/redexgen/X/mL;J)Lcom/facebook/ads/redexgen/X/CW;
    .locals 6

    .line 32925
    new-instance v0, Lcom/facebook/ads/redexgen/X/CW;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-wide v4, p3

    move-object v3, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CW;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/mL;J)V

    return-object v0
.end method

.method public final A03(ILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;J)V
    .locals 12

    .line 32926
    new-instance v2, Lcom/facebook/ads/redexgen/X/CG;

    .line 32927
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    move-object/from16 v7, p4

    move v6, p3

    move-object v5, p2

    move v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/CG;-><init>(IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V

    .line 32928
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/CW;->A0C(Lcom/facebook/ads/redexgen/X/CG;)V

    .line 32929
    return-void
.end method

.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 2

    .line 32930
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32931
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32932
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CV;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32933
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/CE;IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V
    .locals 13

    .line 32934
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/CG;

    .line 32935
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v9

    .line 32936
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/CG;-><init>(IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V

    .line 32937
    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/CW;->A09(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    .line 32938
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/CE;IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJI)V
    .locals 13
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1768"
    .end annotation

    .line 32939
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/CG;

    .line 32940
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v9

    .line 32941
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/CG;-><init>(IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V

    .line 32942
    move/from16 v1, p11

    invoke-direct {v0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/CW;->A01(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;I)V

    .line 32943
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CE;IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 13

    .line 32944
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/CG;

    .line 32945
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v9

    .line 32946
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/CG;-><init>(IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V

    .line 32947
    move/from16 v1, p12

    move-object/from16 v2, p11

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/CW;->A0A(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V

    .line 32948
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/CE;IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1    # Lcom/facebook/ads/redexgen/X/CE;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 32949
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/CG;

    .line 32950
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v9

    .line 32951
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CW;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/CG;-><init>(IILcom/facebook/ads/redexgen/X/or;ILjava/lang/Object;JJ)V

    .line 32952
    move-object/from16 v1, p12

    move-object/from16 v2, p11

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/CW;->A0B(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32953
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 4

    .line 32954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CV;

    .line 32955
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32956
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CT;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/CT;-><init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 32957
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/CX;
    goto :goto_0

    .line 32958
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V
    .locals 9

    .line 32959
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CV;

    .line 32960
    .local p0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32961
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/CO;

    move-object v3, p0

    move v8, p4

    move-object v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 32962
    .end local p0    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/CX;
    goto :goto_0

    .line 32963
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1    # Lcom/facebook/ads/redexgen/X/CE;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/CG;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 32964
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CV;

    .line 32965
    .local p0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32966
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/CP;

    move-object v3, p0

    move-object v8, p4

    move-object v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/CP;-><init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 32967
    .end local p0    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/CX;
    goto :goto_0

    .line 32968
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 4

    .line 32969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CV;

    .line 32970
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 32971
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/CX;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CV;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(Lcom/facebook/ads/redexgen/X/CW;Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CG;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 32972
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/CX;
    goto :goto_0

    .line 32973
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 3

    .line 32974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/CV;

    .line 32975
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/CV;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CV;->A01:Lcom/facebook/ads/redexgen/X/CX;

    if-ne v0, p1, :cond_0

    .line 32976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32977
    :cond_1
    return-void
.end method

.method public final synthetic A0E(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 2

    .line 32978
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Lcom/facebook/ads/redexgen/X/mL;

    invoke-interface {p1, v1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/CX;->ADw(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;)V

    return-void
.end method

.method public final synthetic A0F(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V
    .locals 7

    .line 32979
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Lcom/facebook/ads/redexgen/X/mL;

    move v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CX;->AE1(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic A0G(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 32980
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Lcom/facebook/ads/redexgen/X/mL;

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CX;->ADy(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CE;Lcom/facebook/ads/redexgen/X/CG;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic A0H(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CG;)V
    .locals 2

    .line 32981
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Lcom/facebook/ads/redexgen/X/mL;

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/CX;->AD6(ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/CG;)V

    return-void
.end method
