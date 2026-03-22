.class public final Lcom/facebook/ads/redexgen/X/4Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:[J

.field public A03:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13241
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4Q;-><init>(I)V

    .line 13242
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13243
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13244
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A02:[J

    .line 13245
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4Q;->A00(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A03:[Ljava/lang/Object;

    .line 13246
    return-void
.end method

.method public static A00(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 13247
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A01()I
    .locals 1

    .local p0, "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 13248
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A01:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    .local p0, "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 13249
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A00:I

    .line 13250
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A01:I

    .line 13251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Q;->A03:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13252
    monitor-exit p0

    return-void

    .line 13253
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4Q;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
