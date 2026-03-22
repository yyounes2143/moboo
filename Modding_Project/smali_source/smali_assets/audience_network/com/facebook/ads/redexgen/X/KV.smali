.class public final Lcom/facebook/ads/redexgen/X/KV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/4I;

.field public final A06:Lcom/facebook/ads/redexgen/X/4R;

.field public final A07:Lcom/facebook/ads/redexgen/X/KJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 952
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C4diU0jF5HFDKOo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VIjpOvF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "79HwagMXBprlpWu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XtcHcpqmD0hF0uYglpDGiCUjQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b5FzuRibdN76veNUTRkVPezKuChwyeRa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N5rSQt9O61BKPKT7czdchdAeeSshGZI7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4j3xcnZH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5T71Z7kL4B4E0IfY6yh9iA0vCqeGrORl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KJ;Lcom/facebook/ads/redexgen/X/4R;)V
    .locals 2

    .line 49222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KV;->A07:Lcom/facebook/ads/redexgen/X/KJ;

    .line 49224
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KV;->A06:Lcom/facebook/ads/redexgen/X/4R;

    .line 49225
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    .line 49226
    return-void
.end method

.method private A00()V
    .locals 3

    .line 49227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A03:Z

    .line 49229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A02:Z

    .line 49230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:I

    .line 49232
    return-void
.end method

.method private A01()V
    .locals 11

    .line 49233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A01:J

    .line 49234
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A03:Z

    if-eqz v0, :cond_2

    .line 49235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v10, 0x1e

    shl-long/2addr v3, v10

    .line 49237
    .local v3, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 49239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 49241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49242
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A04:Z

    if-nez v0, :cond_1

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/KV;->A02:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    const-string v1, "5JhR9Zg0WmWGqTK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Xh2Ow42d4ocIa9L"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v9, :cond_1

    .line 49243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v1, v0

    shl-long/2addr v1, v10

    .line 49245
    .local v0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 49247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 49248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 49249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    sget-object v5, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v0, 0x3

    if-eq v5, v0, :cond_3

    .line 49250
    sget-object v6, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    const-string v5, "UDMLuQZN0eWx6zw"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const-string v5, "a17qMMuziGA5O0G"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A06:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    .line 49251
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/KV;->A04:Z

    .line 49252
    .end local v0    # "dts":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A06:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A01:J

    .line 49253
    .end local v3    # "pts":J
    :cond_2
    return-void

    .line 49254
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/KV;->A08:[Ljava/lang/String;

    const-string v5, "zPtJRCJUDuumy6c"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const-string v5, "cIaKenGO0crEC3t"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A06:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    .line 49255
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/KV;->A04:Z

    goto :goto_0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 49256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A04:Z

    .line 49257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A07:Lcom/facebook/ads/redexgen/X/KJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/KJ;->AIL()V

    .line 49258
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 49259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 49260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 49261
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KV;->A00()V

    .line 49262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 49263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A05:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 49264
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KV;->A01()V

    .line 49265
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KV;->A07:Lcom/facebook/ads/redexgen/X/KJ;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/KV;->A01:J

    const/4 v0, 0x4

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/KJ;->AG6(JI)V

    .line 49266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A07:Lcom/facebook/ads/redexgen/X/KJ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/KJ;->A52(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 49267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KV;->A07:Lcom/facebook/ads/redexgen/X/KJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/KJ;->AG5()V

    .line 49268
    return-void
.end method
