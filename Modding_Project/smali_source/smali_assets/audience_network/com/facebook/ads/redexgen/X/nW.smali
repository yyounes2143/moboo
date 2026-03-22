.class public abstract Lcom/facebook/ads/redexgen/X/nW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5O;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/nY;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/nX;",
        "E:",
        "Lcom/facebook/ads/redexgen/X/5P;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/5O<",
        "TI;TO;TE;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/5P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/nY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/nY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/nX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3183
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cgd1TDaxcVMzff1lRtR2y3rhLtmh1J5v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3mVGt02Eg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GhemOJNhIn1LMAkty7qqi4u9sWB6uqsq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qo0Xi3kRKf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "h5mwzI1V10xDDagqRPLzWxrZN9rQy7u9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7mnuUFNh1uUIhw2tv7exehIC7mU2Hitk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5ikXrDS3I2SzCX52iEXUFKqtVJtvkjlK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jW6s0CcND"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nW;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nW;->A0S()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/nY;[Lcom/facebook/ads/redexgen/X/nX;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 100755
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/facebook/ads/redexgen/X/nY;, "[TI;"
    .local p2, "outputBuffers":[Lcom/facebook/ads/redexgen/X/nX;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100756
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    .line 100757
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    .line 100758
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    .line 100759
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    .line 100760
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    .line 100761
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    if-ge v2, v0, :cond_0

    .line 100762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0a()Lcom/facebook/ads/redexgen/X/nY;

    move-result-object v0

    aput-object v0, v1, v2

    .line 100763
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100764
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nW;->A0C:[Lcom/facebook/ads/redexgen/X/nX;

    .line 100765
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    .line 100766
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v2, v0, :cond_1

    .line 100767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A0C:[Lcom/facebook/ads/redexgen/X/nX;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0c()Lcom/facebook/ads/redexgen/X/nX;

    move-result-object v0

    aput-object v0, v1, v2

    .line 100768
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100769
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0O(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5T;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/5T;-><init>(Lcom/facebook/ads/redexgen/X/nW;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A08:Ljava/lang/Thread;

    .line 100770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100771
    return-void
.end method

.method private final A0N()Lcom/facebook/ads/redexgen/X/nY;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100772
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 100773
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0Q()V

    .line 100774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 100775
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    if-nez v0, :cond_1

    .line 100776
    const/4 v0, 0x0

    goto :goto_1

    .line 100777
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    aget-object v0, v1, v0

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    .line 100778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    monitor-exit v3

    return-object v0

    .line 100779
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0O(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nW;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0P()V
    .locals 1

    .line 100780
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100782
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100783
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A03:Lcom/facebook/ads/redexgen/X/5P;

    .line 100784
    .local v0, "exception":Lcom/facebook/ads/redexgen/X/5P;, "TE;"
    if-nez v0, :cond_0

    .line 100785
    return-void

    .line 100786
    :cond_0
    throw v0
.end method

.method private A0R()V
    .locals 2

    .line 100787
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0X()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100788
    :cond_0
    return-void
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100789
    :catch_0
    move-exception v1

    .line 100790
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A0S()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nW;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        0x13t
        0xat
        -0x15t
        0x7t
        -0x4t
        0x14t
        0x0t
        0xdt
        -0x2bt
        -0x12t
        0x4t
        0x8t
        0xbt
        0x7t
        0x0t
        -0x21t
        0x0t
        -0x2t
        0xat
        -0x1t
        0x0t
        0xdt
    .end array-data
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/nY;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 100791
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 100792
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    aput-object p1, v2, v1

    .line 100793
    return-void
.end method

.method private A0U(Lcom/facebook/ads/redexgen/X/nX;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 100794
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/nX;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5I;->A0A()V

    .line 100795
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nW;->A0C:[Lcom/facebook/ads/redexgen/X/nX;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    aput-object p1, v2, v1

    .line 100796
    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/nW;)V
    .locals 0

    .line 100797
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0R()V

    return-void
.end method

.method private A0W()Z
    .locals 4

    .line 100798
    .local v1, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/nW;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/nW;->A0E:[Ljava/lang/String;

    const-string v1, "9DwPxvkyUmdJywitv52WFgQf7iOLAqys"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WYGXgkStQ9kUI1rtTWhvxjquSY9kHuMe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0X()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 100799
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v6

    .line 100800
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A06:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 100802
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A06:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 100803
    monitor-exit v6

    return v4

    .line 100804
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/nY;

    .line 100805
    .local v1, "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A0C:[Lcom/facebook/ads/redexgen/X/nX;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    aget-object v2, v1, v0

    .line 100806
    .local v3, "outputBuffer":Lcom/facebook/ads/redexgen/X/nX;, "TO;"
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A05:Z

    .line 100807
    .local v4, "resetDecoder":Z
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/nW;->A05:Z

    .line 100808
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100809
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100810
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 100811
    .end local v0
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_2

    .line 100812
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5I;->A04()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100813
    const/high16 v0, -0x80000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 100814
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5I;->A06()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100815
    const/high16 v0, 0x8000000

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5I;->A00(I)V

    .line 100816
    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/nW;->A0Y(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/nX;Z)Lcom/facebook/ads/redexgen/X/5P;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 100817
    .end local v0
    :catch_0
    move-exception v0

    .line 100818
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/5P;

    move-result-object v0

    .local v6, "exception":Lcom/facebook/ads/redexgen/X/5P;, "TE;"
    goto :goto_1

    .line 100819
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "exception":Lcom/facebook/ads/redexgen/X/5P;, "TE;"
    :catch_1
    move-exception v0

    .line 100820
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/5P;

    move-result-object v0

    .line 100821
    .local v0, "exception":Lcom/facebook/ads/redexgen/X/5P;, "TE;"
    :goto_1
    if-eqz v0, :cond_2

    .line 100822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_5

    .line 100823
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A05:Z

    if-eqz v0, :cond_6

    .line 100824
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/nX;->A0B()V

    .line 100825
    :goto_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/nW;->A0T(Lcom/facebook/ads/redexgen/X/nY;)V

    .line 100826
    monitor-exit v1

    goto :goto_4

    .line 100827
    :cond_6
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5I;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100828
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:I

    .line 100829
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/nX;->A0B()V

    goto :goto_3

    .line 100830
    :cond_7
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nX;->A00:I

    .line 100831
    iput v4, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:I

    .line 100832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 100833
    :goto_4
    return v5

    .line 100834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100835
    :goto_5
    :try_start_3
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A03:Lcom/facebook/ads/redexgen/X/5P;

    .line 100836
    monitor-exit v1

    .line 100837
    return v4

    .line 100838
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 100839
    .end local v1    # "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    .end local v3    # "outputBuffer":Lcom/facebook/ads/redexgen/X/nX;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method


# virtual methods
.method public abstract A0Y(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/nX;Z)Lcom/facebook/ads/redexgen/X/5P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/5P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public abstract A0a()Lcom/facebook/ads/redexgen/X/nY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0b()Lcom/facebook/ads/redexgen/X/nX;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100840
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 100841
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0Q()V

    .line 100842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100843
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    .line 100844
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nX;

    monitor-exit v1

    return-object v0

    .line 100845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract A0c()Lcom/facebook/ads/redexgen/X/nX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public final A0d(I)V
    .locals 4

    .line 100846
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 100847
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nW;->A0B:[Lcom/facebook/ads/redexgen/X/nY;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v0, v2, v3

    .line 100848
    .local v3, "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/nY;->A0C(I)V

    .line 100849
    .end local v3    # "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100850
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100851
    :cond_1
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/nY;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100852
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/nY;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 100853
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0Q()V

    .line 100854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 100855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 100856
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0P()V

    .line 100857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    .line 100858
    monitor-exit v1

    .line 100859
    return-void

    .line 100860
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public A0f(Lcom/facebook/ads/redexgen/X/nX;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 100861
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/nX;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 100862
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nW;->A0U(Lcom/facebook/ads/redexgen/X/nX;)V

    .line 100863
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0P()V

    .line 100864
    monitor-exit v1

    .line 100865
    return-void

    .line 100866
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic A5j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100867
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0N()Lcom/facebook/ads/redexgen/X/nY;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A5l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100868
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nW;->A0b()Lcom/facebook/ads/redexgen/X/nX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AGZ(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5P;
        }
    .end annotation

    .line 100869
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/nY;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nW;->A0e(Lcom/facebook/ads/redexgen/X/nY;)V

    return-void
.end method

.method public final AGr()V
    .locals 2

    .line 100870
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 100871
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A06:Z

    .line 100872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100873
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100874
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100875
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100876
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 100877
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 100878
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nW;, "Lcom/facebook/ads/androidx/media3/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nW;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 100879
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A05:Z

    .line 100880
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A02:I

    .line 100881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    if-eqz v0, :cond_0

    .line 100882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0T(Lcom/facebook/ads/redexgen/X/nY;)V

    .line 100883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A04:Lcom/facebook/ads/redexgen/X/nY;

    .line 100884
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nW;->A0T(Lcom/facebook/ads/redexgen/X/nY;)V

    goto :goto_0

    .line 100886
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nX;->A0B()V

    goto :goto_1

    .line 100888
    :cond_2
    monitor-exit v1

    .line 100889
    return-void

    .line 100890
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
