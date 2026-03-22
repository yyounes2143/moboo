.class public final Lcom/facebook/ads/redexgen/X/7m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7l;
    }
.end annotation


# static fields
.field public static final A03:Lcom/facebook/ads/redexgen/X/7m;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/7l;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 441
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1f

    const-string v2, ""

    if-ge v1, v0, :cond_0

    .line 442
    new-instance v1, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/7m;-><init>(Ljava/lang/String;)V

    .line 443
    :goto_0
    sput-object v1, Lcom/facebook/ads/redexgen/X/7m;->A03:Lcom/facebook/ads/redexgen/X/7m;

    .line 444
    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7l;->A01:Lcom/facebook/ads/redexgen/X/7l;

    new-instance v1, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/7m;-><init>(Lcom/facebook/ads/redexgen/X/7l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7l;Ljava/lang/String;)V
    .locals 1

    .line 22253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22254
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    .line 22255
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Ljava/lang/String;

    .line 22256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A02:Ljava/lang/Object;

    .line 22257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22259
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 22260
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Ljava/lang/String;

    .line 22261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    .line 22262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A02:Ljava/lang/Object;

    .line 22263
    return-void

    .line 22264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 22265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7l;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7l;->A00:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 22266
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 22267
    return v2

    .line 22268
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/7m;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 22269
    return v0

    .line 22270
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/7m;

    .line 22271
    .local v1, "playerId":Lcom/facebook/ads/redexgen/X/7m;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7m;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    .line 22272
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7m;->A02:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/7m;->A02:Ljava/lang/Object;

    .line 22273
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22274
    :goto_0
    return v2

    .line 22275
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .line 22276
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7m;->A00:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7m;->A01:Lcom/facebook/ads/redexgen/X/7l;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7m;->A02:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
