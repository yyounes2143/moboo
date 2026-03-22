.class public abstract Lcom/facebook/ads/redexgen/X/Rr;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Rp;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1575
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "As3hIStO2xNa0GSSHrkEVjQu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "txdj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A05()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1576
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Rp;
    .locals 1

    .line 63194
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rp;

    .line 63195
    .local v0, "advertisingIdInfo":Lcom/facebook/ads/redexgen/X/Rp;
    if-nez v0, :cond_0

    .line 63196
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A00()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    return-object v0

    .line 63197
    :cond_0
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/Rp;
    .locals 5

    .line 63198
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63199
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Rx;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63200
    :catchall_0
    move-exception v0

    .line 63201
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1Q:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 63202
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 63203
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    return-object p1
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Rp;
    .locals 6

    .line 63204
    const/4 v5, 0x0

    .line 63205
    .local v0, "fb4aData":Lcom/facebook/ads/redexgen/X/Rs;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U6;->A06(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 63206
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63207
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rt;->A00(Landroid/content/ContentResolver;)Lcom/facebook/ads/redexgen/X/Rs;

    move-result-object v5

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63208
    :catchall_0
    move-exception v0

    .line 63209
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1S:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 63210
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 63211
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Rs;->A01:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 63212
    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Rs;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63213
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Rs;->A01:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Rq;->A05(Ljava/lang/String;)V

    .line 63214
    :cond_2
    if-nez p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Rs;->A00:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63215
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Rs;->A00:Ljava/lang/String;

    iget-boolean v1, v5, Lcom/facebook/ads/redexgen/X/Rs;->A02:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ro;->A04:Lcom/facebook/ads/redexgen/X/Ro;

    new-instance p1, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Ro;)V

    .line 63216
    :cond_3
    return-object p1
.end method

.method public static A03()Ljava/lang/String;
    .locals 3

    .line 63217
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63218
    .local v0, "attributionId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63219
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63220
    :cond_0
    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const-string v1, "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x1bt
        0x16t
        0x11t
        0x21t
        0x28t
        0x17t
        0x24t
        0x24t
        0x1bt
        0x16t
        0x17t
        0x11t
        0xft
        0x18t
        0xft
        0x1ct
        0x13t
        0xdt
        0x2bt
        0x26t
        0x28t
        0x23t
        0x21t
        0x31t
        0x38t
        0x27t
        0x34t
        0x34t
        0x2bt
        0x26t
        0x27t
    .end array-data
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Rq;)V
    .locals 2

    .line 63221
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A02()Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v1

    .line 63222
    .local v0, "adInfoFromStorage":Lcom/facebook/ads/redexgen/X/Rp;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63223
    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rq;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63224
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 8

    .line 63225
    :try_start_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/Rq;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/Rq;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 63226
    .local v0, "attributionStorage":Lcom/facebook/ads/redexgen/X/Rq;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Rr;->A06(Lcom/facebook/ads/redexgen/X/Rq;)V

    .line 63227
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rr;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63228
    return-void

    .line 63229
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rp;

    .line 63230
    .local v1, "advertisingIdInfo":Lcom/facebook/ads/redexgen/X/Rp;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63231
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rp;->A01()J

    move-result-wide v6

    .local v2, "cacheTS":J
    goto :goto_0

    .line 63232
    .end local v2    # "cacheTS":J
    :cond_1
    const-wide/16 v6, -0x1

    .line 63233
    .restart local v2    # "cacheTS":J
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-lez v0, :cond_2

    .line 63234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    .line 63235
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U6;->A00(Landroid/content/Context;)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 63236
    return-void

    .line 63237
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U6;->A07(Landroid/content/Context;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 63238
    invoke-static {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/Rr;->A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    .line 63239
    .local v4, "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/Rp;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A01(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v1

    goto :goto_1

    .line 63240
    .end local v4    # "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/Rp;
    :cond_3
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A01(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;)Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v0

    .line 63241
    .restart local v4    # "upToDateAdInfo":Lcom/facebook/ads/redexgen/X/Rp;
    invoke-static {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/Rr;->A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Rq;)Lcom/facebook/ads/redexgen/X/Rp;

    move-result-object v1

    .line 63242
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rp;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63243
    sget-object v0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63244
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/Rq;->A04(Lcom/facebook/ads/redexgen/X/Rp;)V

    goto :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63245
    :catchall_0
    move-exception v0

    .line 63246
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1R:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 63247
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 63248
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-void
.end method

.method public static A08()Z
    .locals 5

    .line 63249
    const/4 v4, 0x0

    .line 63250
    .local v0, "updated":Z
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WS;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/WS;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63251
    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/WS;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63252
    const/4 v4, 0x1

    .line 63253
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WS;->A04()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const-string v1, "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WS;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63254
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WS;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63255
    .local v1, "idfaOverride":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63256
    if-eqz v3, :cond_3

    :goto_0
    const/4 v2, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ro;->A03:Lcom/facebook/ads/redexgen/X/Ro;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Rp;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Ro;)V

    .line 63257
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63258
    const/4 v4, 0x1

    .line 63259
    .end local v1    # "idfaOverride":Ljava/lang/String;
    :cond_2
    return v4

    .line 63260
    :cond_3
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const-string v1, "Ywke"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rr;->A01:[Ljava/lang/String;

    const-string v1, "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->A04(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
