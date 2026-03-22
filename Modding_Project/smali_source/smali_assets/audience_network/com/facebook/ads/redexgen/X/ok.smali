.class public final Lcom/facebook/ads/redexgen/X/ok;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2O;,
        Lcom/facebook/ads/androidx/media3/common/MediaItem$LiveConfiguration$FieldNumber;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/ok;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Lcom/facebook/ads/redexgen/X/ok;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:J

.field public final A03:J

.field public final A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3317
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DHM3ogSyPiOeoDv5bW0AxEOdKkHHyzoj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DikGrT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5TP2r3oYS7ZAxQ2Lbh6O1Hwgb27IVuVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BcOsGW4wr7kIZtXNBjWS4kH8Hq7r3t1j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xCBSo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o3SRWC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "etImtR6pfOeyK0p12rnN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VXmJTa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2O;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->A05()Lcom/facebook/ads/redexgen/X/ok;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ok;->A07:Lcom/facebook/ads/redexgen/X/ok;

    .line 3318
    new-instance v0, Lcom/facebook/ads/redexgen/X/ol;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ol;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ok;->A06:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102191
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:J

    .line 102192
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:J

    .line 102193
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:J

    .line 102194
    iput p7, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:F

    .line 102195
    iput p8, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:F

    .line 102196
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2O;)V
    .locals 9

    .line 102197
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2O;->A02(Lcom/facebook/ads/redexgen/X/2O;)J

    move-result-wide v1

    .line 102198
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2O;->A03(Lcom/facebook/ads/redexgen/X/2O;)J

    move-result-wide v3

    .line 102199
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2O;->A04(Lcom/facebook/ads/redexgen/X/2O;)J

    move-result-wide v5

    .line 102200
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2O;->A00(Lcom/facebook/ads/redexgen/X/2O;)F

    move-result v7

    .line 102201
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2O;->A01(Lcom/facebook/ads/redexgen/X/2O;)F

    move-result v8

    .line 102202
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/ok;-><init>(JJJFF)V

    .line 102203
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2O;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 0

    .line 102204
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ok;-><init>(Lcom/facebook/ads/redexgen/X/2O;)V

    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/ok;
    .locals 11

    .line 102205
    new-instance v3, Lcom/facebook/ads/redexgen/X/ok;

    .line 102206
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ok;->A01(I)Ljava/lang/String;

    move-result-object v2

    .line 102207
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 102208
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ok;->A01(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 102209
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ok;->A01(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 102210
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ok;->A01(I)Ljava/lang/String;

    move-result-object v0

    .line 102211
    const v1, -0x800001

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 102212
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ok;->A01(I)Ljava/lang/String;

    move-result-object v0

    .line 102213
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/ok;-><init>(JJJFF)V

    .line 102214
    return-object v3
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 1

    .line 102215
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 102216
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 102217
    return v5

    .line 102218
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/ok;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 102219
    return v0

    .line 102220
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/ok;

    .line 102221
    .local v1, "other":Lcom/facebook/ads/redexgen/X/ok;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/ok;->A04:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/ok;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const-string v1, "Dnbo0S1X4SiwSLqrl4n96G4h1rg7k6Qp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/ok;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ok;->A01:F

    cmpl-float v3, v1, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/ok;->A05:[Ljava/lang/String;

    const-string v1, "apznZec0lqKPAkNyEzYuPUZE7fb8LaPc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "99vPzfkBdBLW0Tl0nQsz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ok;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    :goto_0
    return v5
.end method

.method public final hashCode()I
    .locals 6

    .line 102222
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A04:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    .line 102223
    .local v1, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A03:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 102224
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v4, v4, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A02:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 102225
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:F

    const/4 v3, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 102226
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_0
    add-int/2addr v1, v3

    .line 102227
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 102228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
