.class public final Lcom/facebook/ads/redexgen/X/9a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nl;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/4u;

.field public final A03:Lcom/facebook/ads/redexgen/X/nl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 561
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wbGAhFLyG1O1BXRQkdAsuvRwjcG0JvdY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WIGHUXkmdMwjKtYrGQHAEajnCcLVhsJc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "71g9TI5vzncmEyYDsqHRZQ5IIDSVhuCU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Of7gEliA8dohBLU5UePsnNPr9luYUKIX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ip7oB5coOYYSe2wQ3nHh7WYhGK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mFyxGR7YA7Uh54mquru9LT9AFg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iYrL5ZFnNwboLBDSkDK7D5rnh7HwI2GN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DEMvAgZEfGNSxO1Scy7Mz579azioI4xU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9a;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/4u;)V
    .locals 1

    .line 28298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28299
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    .line 28300
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/4u;

    .line 28301
    return-void
.end method


# virtual methods
.method public final A3v(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 28302
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 28304
    return-void
.end method

.method public final A8l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A8l()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 28306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A9H()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    .line 28308
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 28309
    return-wide v3

    .line 28310
    :cond_0
    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/9a;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9a;->A04:[Ljava/lang/String;

    const-string v1, "8JYiy7Q3QOgUU9IJtNo1oEeVZYLkhQA2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "C3hXJiAszWGMEEgz1C8EzdfpsF4hhGij"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_2

    .line 28311
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/56;->A05(JJ)Lcom/facebook/ads/redexgen/X/56;

    move-result-object p1

    .line 28312
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Z

    .line 28313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4u;->AG0(Lcom/facebook/ads/redexgen/X/56;)V

    .line 28314
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    return-wide v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28315
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28316
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Z

    if-eqz v0, :cond_0

    .line 28317
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Z

    .line 28318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4u;->close()V

    .line 28319
    :cond_0
    return-void

    .line 28320
    :catchall_0
    move-exception v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Z

    if-eqz v0, :cond_1

    .line 28321
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Z

    .line 28322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4u;->close()V

    .line 28323
    :cond_1
    throw v1
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28324
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 28325
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9a;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9a;->A04:[Ljava/lang/String;

    const-string v1, "tTmOA5hODgmGBNxF0mS11dvWTNwifcB6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mpSZqupnUd3dBB1VIyplsxMvqiIWybTS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 28326
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v5

    .line 28327
    .local v0, "bytesRead":I
    if-lez v5, :cond_2

    .line 28328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/4u;

    invoke-interface {v0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/4u;->write([BII)V

    .line 28329
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 28330
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    int-to-long v0, v5

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    .line 28331
    :cond_2
    return v5
.end method
