.class public final Lcom/facebook/ads/redexgen/X/mV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bf;


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Be;

.field public final A01:Lcom/facebook/ads/redexgen/X/31;

.field public final A02:Lcom/facebook/ads/redexgen/X/56;

.field public final A03:Lcom/facebook/ads/redexgen/X/7S;

.field public final A04:Lcom/facebook/ads/redexgen/X/M2;

.field public final A05:Ljava/util/concurrent/Executor;

.field public volatile A06:Lcom/facebook/ads/redexgen/X/4M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/4M<",
            "Ljava/lang/Void;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field public volatile A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3155
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6Pd6msxcVNGBSX02eJXjJuTK1755qRBj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HohFYYIoFYVFLjySAriRsbI1EyK3MfzH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CeUiguCmFwn8TW5CDLSIDkbyI8ACimQb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zlyrIOO0KfkMjpYTb9psfC0NNgHcfA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hplEZcFLtp2y3xCWfrXOGnyD7Ln2K5MA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IDL7x3RfZufseciwLxrhiUDjrsxZNied"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XKrD5ajpOT4k5Fxpc35DaF0adCV7zARl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Sdgzg0MlhPfZZU1TENhiXzUXxxUExQMT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mV;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mV;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oi;Lcom/facebook/ads/redexgen/X/ix;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 98804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98805
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A05:Ljava/util/concurrent/Executor;

    .line 98806
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98807
    new-instance v1, Lcom/facebook/ads/redexgen/X/53;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/53;-><init>()V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Landroid/net/Uri;

    .line 98808
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A06(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oi;->A03:Lcom/facebook/ads/redexgen/X/2Q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/lang/String;

    .line 98809
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v1

    .line 98810
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/53;->A02(I)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    .line 98811
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A02:Lcom/facebook/ads/redexgen/X/56;

    .line 98812
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ix;->A07()Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A03:Lcom/facebook/ads/redexgen/X/7S;

    .line 98813
    new-instance v4, Lcom/facebook/ads/redexgen/X/mX;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/mX;-><init>(Lcom/facebook/ads/redexgen/X/mV;)V

    .line 98814
    .local v0, "progressListener":Lcom/facebook/ads/redexgen/X/M1;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mV;->A03:Lcom/facebook/ads/redexgen/X/7S;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mV;->A02:Lcom/facebook/ads/redexgen/X/56;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/M2;-><init>(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/56;[BLcom/facebook/ads/redexgen/X/M1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A04:Lcom/facebook/ads/redexgen/X/M2;

    .line 98815
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ix;->A02()Lcom/facebook/ads/redexgen/X/31;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A01:Lcom/facebook/ads/redexgen/X/31;

    .line 98816
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/mV;)Lcom/facebook/ads/redexgen/X/M2;
    .locals 0

    .line 98817
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mV;->A04:Lcom/facebook/ads/redexgen/X/M2;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/mV;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mV;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mV;->A09:[Ljava/lang/String;

    const-string v1, "fxMtGUUqqO78zEEYN3IhZEPjI2AJG4xW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "cS7s2KNWeBHf1m4W4BuqIbsBl519HGHJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x44

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mV;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x22t
        0x22t
        0x1ct
        0x1et
        0x1bt
        0xft
        0x11t
        0x11t
        0x10t
        0xct
        -0x1t
        0x7t
        0x9t
        0x10t
        -0x1t
    .end array-data
.end method

.method private A03(JJJ)V
    .locals 8

    .line 98818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A00:Lcom/facebook/ads/redexgen/X/Be;

    if-nez v0, :cond_0

    .line 98819
    return-void

    .line 98820
    :cond_0
    const-wide/16 v1, -0x1

    move-wide v3, p1

    cmp-long v0, v3, v1

    move-wide v5, p3

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 98821
    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    .line 98822
    .local v6, "percentDownloaded":F
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mV;->A00:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Be;->AEo(JJF)V

    .line 98823
    return-void

    .line 98824
    :cond_2
    long-to-float v7, v5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v7, v0

    long-to-float v0, v3

    div-float/2addr v7, v0

    goto :goto_0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/mV;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/mV;->A03(JJJ)V

    return-void
.end method


# virtual methods
.method public final A5v(Lcom/facebook/ads/redexgen/X/Be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98825
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mV;->A00:Lcom/facebook/ads/redexgen/X/Be;

    .line 98826
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 98827
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mV;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98828
    :cond_0
    const/4 v2, 0x0

    .line 98829
    .local v0, "finished":Z
    :goto_0
    if-nez v2, :cond_5

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A07:Z

    if-nez v0, :cond_5

    .line 98830
    new-instance v0, Lcom/facebook/ads/redexgen/X/mW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/mW;-><init>(Lcom/facebook/ads/redexgen/X/mV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    .line 98831
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 98832
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mV;->A05:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98833
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->get()Ljava/lang/Object;

    .line 98834
    const/4 v2, 0x1

    goto :goto_0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98835
    :catch_0
    move-exception v0

    .line 98836
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 98837
    .local p0, "cause":Ljava/lang/Throwable;
    const/4 v0, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 98838
    :goto_1
    const/4 v2, 0x3

    const/4 v1, 0x7

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mV;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98839
    :cond_2
    instance-of v0, v1, Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 98840
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4a;->A11(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0

    .line 98841
    :cond_3
    check-cast v1, Ljava/io/IOException;

    .end local p3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98842
    .end local v0    # "finished":Z
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local p0    # "cause":Ljava/lang/Throwable;
    .restart local p3
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A02()V

    .line 98843
    const/4 v0, 0x0

    if-eqz v0, :cond_4

    .line 98844
    const/16 v2, 0xa

    const/4 v1, 0x6

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mV;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98845
    :cond_4
    throw v1

    .line 98846
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A02()V

    .line 98847
    const/4 v0, 0x0

    if-eqz v0, :cond_6

    .line 98848
    const/16 v2, 0xa

    const/4 v1, 0x6

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mV;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98849
    :cond_6
    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 98850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/mV;->A07:Z

    .line 98851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A06:Lcom/facebook/ads/redexgen/X/4M;

    .line 98852
    .local v1, "downloadRunnable":Lcom/facebook/ads/redexgen/X/4M;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<Ljava/lang/Void;Ljava/io/IOException;>;"
    if-eqz v0, :cond_0

    .line 98853
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->cancel(Z)Z

    .line 98854
    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 3

    .line 98855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0E()Lcom/facebook/ads/redexgen/X/Ln;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0F()Lcom/facebook/ads/redexgen/X/Lw;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mV;->A02:Lcom/facebook/ads/redexgen/X/56;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->A4d(Lcom/facebook/ads/redexgen/X/56;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Ln;->AHk(Ljava/lang/String;)V

    .line 98856
    return-void
.end method
