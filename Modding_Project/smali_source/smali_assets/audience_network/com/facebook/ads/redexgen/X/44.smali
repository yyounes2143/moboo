.class public abstract Lcom/facebook/ads/redexgen/X/44;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/43;,
        Lcom/facebook/ads/androidx/media3/common/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:Lcom/facebook/ads/redexgen/X/43;

.field public static A02:Z

.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 269
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pjC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ar4G3OSxcgl2D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AarUE2nt7cnp4GdKoelKCQn2Jt4OXyEc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B5uTmPcht7q4WCzfelpVRln9dVKzTr9W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "36fORse15dXsGKgrcWq47HxFqRHPKtSm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Eh56lsHHP32qxPGDjQKhG4rai7NSZl8p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QN71kq8063jCyPpsf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zuMcuSAj79dOj6A3T"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/44;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/44;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    .line 270
    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/44;->A02:Z

    .line 272
    sget-object v0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/43;

    sput-object v0, Lcom/facebook/ads/redexgen/X/44;->A01:Lcom/facebook/ads/redexgen/X/43;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/44;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/44;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A04:[Ljava/lang/String;

    const-string v1, "EwS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x73

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 11982
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/44;->A02(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 11983
    .local v0, "throwableString":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11985
    :cond_0
    return-object p0
.end method

.method public static A02(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 11986
    sget-object v5, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    monitor-enter v5

    .line 11987
    if-nez p0, :cond_0

    .line 11988
    :try_start_0
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    .line 11989
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/44;->A0B(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11990
    const/16 v2, 0x9

    const/16 v1, 0x21

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 11991
    :cond_1
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/44;->A02:Z

    if-nez v0, :cond_2

    .line 11992
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 11993
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/44;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 11994
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/44;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x41t
        0x7ft
        -0x6bt
        -0x6bt
        0x4t
        0x4t
        0x4t
        0x4t
        -0x8t
        0x11t
        0xet
        0x11t
        0x12t
        0x1at
        0x11t
        -0x15t
        0x12t
        0x16t
        0x17t
        -0x18t
        0x1bt
        0x6t
        0x8t
        0x13t
        0x17t
        0xct
        0x12t
        0x11t
        -0x3dt
        -0x35t
        0x11t
        0x12t
        -0x3dt
        0x11t
        0x8t
        0x17t
        0x1at
        0x12t
        0x15t
        0xet
        -0x34t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 11995
    sget-object p1, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    monitor-enter p1

    .line 11996
    :try_start_0
    sget p0, Lcom/facebook/ads/redexgen/X/44;->A00:I

    .line 11997
    monitor-exit p1

    .line 11998
    return-void

    .line 11999
    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12000
    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12001
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/44;->A00:I

    const/4 v0, 0x3

    if-gt v1, v0, :cond_0

    .line 12002
    sget-object v0, Lcom/facebook/ads/redexgen/X/44;->A01:Lcom/facebook/ads/redexgen/X/43;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/43;->A69(Ljava/lang/String;Ljava/lang/String;)V

    .line 12003
    :cond_0
    monitor-exit v2

    .line 12004
    return-void

    .line 12005
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12006
    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12007
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/44;->A00:I

    const/4 v0, 0x1

    if-gt v1, v0, :cond_0

    .line 12008
    sget-object v0, Lcom/facebook/ads/redexgen/X/44;->A01:Lcom/facebook/ads/redexgen/X/43;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/43;->A9l(Ljava/lang/String;Ljava/lang/String;)V

    .line 12009
    :cond_0
    monitor-exit v2

    .line 12010
    return-void

    .line 12011
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12012
    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12013
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/44;->A00:I

    const/4 v0, 0x2

    if-gt v1, v0, :cond_0

    .line 12014
    sget-object v0, Lcom/facebook/ads/redexgen/X/44;->A01:Lcom/facebook/ads/redexgen/X/43;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/43;->AK1(Ljava/lang/String;Ljava/lang/String;)V

    .line 12015
    :cond_0
    monitor-exit v2

    .line 12016
    return-void

    .line 12017
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12018
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 12019
    return-void
.end method

.method public static A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12020
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 12021
    return-void
.end method

.method public static A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12022
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 12023
    return-void
.end method

.method public static A0B(Ljava/lang/Throwable;)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12024
    :goto_0
    if-eqz p0, :cond_2

    .line 12025
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 12026
    const/4 p0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12027
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/44;->A04:[Ljava/lang/String;

    const-string v1, "Bi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 12028
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
