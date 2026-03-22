.class public abstract Lcom/facebook/ads/redexgen/X/om;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2J;,
        Lcom/facebook/ads/androidx/media3/common/MediaItem$ClippingConfiguration$FieldNumber;
    }
.end annotation


# static fields
.field public static final A05:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9r;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/om;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Z

.field public final A03:Z

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3319
    new-instance v0, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2J;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A0A()Lcom/facebook/ads/redexgen/X/9r;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/om;->A06:Lcom/facebook/ads/redexgen/X/om;

    .line 3320
    new-instance v0, Lcom/facebook/ads/redexgen/X/on;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/on;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/om;->A05:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2J;)V
    .locals 2

    .line 102231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102232
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2J;->A00(Lcom/facebook/ads/redexgen/X/2J;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/om;->A01:J

    .line 102233
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2J;->A01(Lcom/facebook/ads/redexgen/X/2J;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:J

    .line 102234
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2J;->A02(Lcom/facebook/ads/redexgen/X/2J;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A03:Z

    .line 102235
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2J;->A03(Lcom/facebook/ads/redexgen/X/2J;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A02:Z

    .line 102236
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2J;->A04(Lcom/facebook/ads/redexgen/X/2J;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A04:Z

    .line 102237
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2J;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 102238
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/om;-><init>(Lcom/facebook/ads/redexgen/X/2J;)V

    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9r;
    .locals 5

    .line 102239
    new-instance v4, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/2J;-><init>()V

    .line 102240
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/om;->A01(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 102241
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/2J;->A06(J)Lcom/facebook/ads/redexgen/X/2J;

    move-result-object v4

    .line 102242
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/om;->A01(I)Ljava/lang/String;

    move-result-object v3

    .line 102243
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 102244
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/2J;->A05(J)Lcom/facebook/ads/redexgen/X/2J;

    move-result-object v1

    .line 102245
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/om;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102246
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2J;->A08(Z)Lcom/facebook/ads/redexgen/X/2J;

    move-result-object v1

    .line 102247
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/om;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102248
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2J;->A07(Z)Lcom/facebook/ads/redexgen/X/2J;

    move-result-object v1

    .line 102249
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/om;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102250
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2J;->A09(Z)Lcom/facebook/ads/redexgen/X/2J;

    move-result-object v0

    .line 102251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A0B()Lcom/facebook/ads/redexgen/X/9r;

    move-result-object v0

    .line 102252
    return-object v0
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 1

    .line 102253
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 102254
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 102255
    return v5

    .line 102256
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/om;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 102257
    return v0

    .line 102258
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/om;

    .line 102259
    .local v1, "other":Lcom/facebook/ads/redexgen/X/om;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/om;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/om;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/om;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/om;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/om;->A03:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/om;->A03:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/om;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/om;->A02:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/om;->A04:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/om;->A04:Z

    if-ne v1, v0, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 102260
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/om;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/om;->A01:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    .line 102261
    .local v1, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/om;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/om;->A00:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 102262
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A03:Z

    add-int/2addr v1, v0

    .line 102263
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A02:Z

    add-int/2addr v1, v0

    .line 102264
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/om;->A04:Z

    add-int/2addr v1, v0

    .line 102265
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
