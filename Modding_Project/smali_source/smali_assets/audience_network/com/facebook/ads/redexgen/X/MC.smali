.class public final Lcom/facebook/ads/redexgen/X/MC;
.super Ljava/io/BufferedOutputStream;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Exo does not declare this as public but we need to as Hero\'s CacheDataSink refers to this"
.end annotation


# instance fields
.field public A00:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 51862
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51863
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 51864
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 51865
    return-void
.end method


# virtual methods
.method public final A00(Ljava/io/OutputStream;)V
    .locals 1

    .line 51866
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 51867
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MC;->out:Ljava/io/OutputStream;

    .line 51868
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MC;->count:I

    .line 51869
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Z

    .line 51870
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:Z

    .line 51872
    const/4 v1, 0x0

    .line 51873
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MC;->flush()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51874
    :catchall_0
    move-exception v1

    .line 51875
    .local v1, "e":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51876
    :catchall_1
    move-exception v0

    .line 51877
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 51878
    move-object v1, v0

    .line 51879
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 51880
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4a;->A11(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0

    .line 51881
    :cond_1
    return-void
.end method
