.class public abstract Lcom/facebook/ads/redexgen/X/hY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/hW;,
        Lcom/facebook/ads/redexgen/X/hX;
    }
.end annotation


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:Ljava/lang/String;

.field public static A02:[B

.field public static final A03:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2818
    invoke-static {}, Lcom/facebook/ads/redexgen/X/hY;->A02()V

    const/16 v2, 0x29

    const/16 v1, 0xc

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hY;->A00:Ljava/lang/String;

    .line 2819
    const/16 v2, 0x77

    const/16 v1, 0x25

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hY;->A01:Ljava/lang/String;

    .line 2820
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/hY;->A03:Ljava/util/Random;

    return-void
.end method

.method public static A00(II)I
    .locals 3

    .line 85163
    if-eqz p1, :cond_0

    .line 85164
    add-int/lit8 v0, p0, -0x1

    int-to-double v2, v0

    .line 85165
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, p0}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v0, p1

    mul-double/2addr v2, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/hY;->A03:Ljava/util/Random;

    .line 85166
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    .line 85167
    return v0

    .line 85168
    :cond_0
    add-int/lit8 v0, p0, -0x1

    int-to-long v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1388

    invoke-static {v2, p0, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hY;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xed

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hY;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x27t
        0x0t
        0x8t
        0xdt
        0x4t
        0x5t
        0x41t
        0x15t
        0xet
        0x41t
        0x13t
        0x4t
        0x15t
        0x13t
        0x8t
        0x4t
        0x17t
        0x4t
        0x41t
        0x2ct
        0x4t
        0x5t
        0x8t
        0x0t
        0x27t
        0xet
        0x13t
        0xct
        0x0t
        0x15t
        0x49t
        0x64t
        0x73t
        0x6et
        0x44t
        0x79t
        0x6et
        0x54t
        0x75t
        0x68t
        0x6dt
        0x9t
        0x2bt
        0x36t
        0x21t
        0x20t
        0x74t
        0xat
        0x2dt
        0x38t
        0x2dt
        0x2ct
        0x2at
        0x7et
        0x48t
        0x59t
        0xdt
        0x6ct
        0x64t
        0xdt
        0x6bt
        0x7ft
        0x6et
        0xdt
        0x4et
        0x42t
        0x43t
        0x4bt
        0x44t
        0x4at
        0x58t
        0x5ft
        0x4ct
        0x59t
        0x44t
        0x42t
        0x43t
        0xdt
        0x59t
        0x42t
        0xdt
        0x1ct
        0x3bt
        0xdt
        0x1ct
        0x48t
        0x29t
        0x21t
        0x48t
        0x2et
        0x3at
        0x2bt
        0x48t
        0x1et
        0x1t
        0xct
        0xdt
        0x7t
        0x48t
        0xct
        0x1dt
        0x1at
        0x9t
        0x1ct
        0x1t
        0x7t
        0x6t
        0x48t
        0x1ct
        0x7t
        0x48t
        0x4dt
        0xct
        0x37t
        0x3at
        0x36t
        0x38t
        0x37t
        0x2bt
        0x39t
        0x24t
        0x20t
        0x28t
        0x22t
        0x38t
        0x39t
        0x12t
        0x39t
        0x3ft
        0x34t
        0x24t
        0x23t
        0x2at
        0x12t
        0x39t
        0x22t
        0x12t
        0x2bt
        0x24t
        0x23t
        0x29t
        0x12t
        0x3et
        0x28t
        0x2at
        0x20t
        0x28t
        0x23t
        0x39t
        0x12t
        0x24t
        0x23t
        0x12t
        0x22t
        0x24t
        0x21t
        0x11t
        0x2t
        0x9t
        0x3t
        0x8t
        0x15t
        0x49t
        0x14t
        0x2t
        0x4t
        0x4at
        0x6t
        0xet
        0x1t
        0x15t
        0x4t
        0x4at
        0x13t
        0x15t
        0x6t
        0x9t
        0x14t
        0x1t
        0x2t
        0x15t
        0x4at
        0x15t
        0x2t
        0x16t
        0x12t
        0x2t
        0x14t
        0x13t
        0x49t
        0x11t
        0x6t
        0xbt
        0x12t
        0x2t
        0xft
        0x1ct
        0x17t
        0x1dt
        0x16t
        0xbt
        0x57t
        0xat
        0x1ct
        0x1at
        0x54t
        0x18t
        0x10t
        0x1ft
        0xbt
        0x1at
        0x54t
        0xft
        0x10t
        0x1dt
        0x1ct
        0x16t
        0x54t
        0x1dt
        0xct
        0xbt
        0x18t
        0xdt
        0x10t
        0x16t
        0x17t
        0x57t
        0xft
        0x18t
        0x15t
        0xct
        0x1ct
        0x71t
        0x6ft
        0x62t
        0x72t
        0x6et
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/hv;Landroid/media/MediaFormat;)V
    .locals 6

    .line 85169
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1e

    const/16 v1, 0xb

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hv;->A01:Z

    if-nez v0, :cond_0

    .line 85170
    return-void

    .line 85171
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/hW;->A02()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85172
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hv;->A0O:Z

    if-eqz v0, :cond_1

    .line 85173
    const/16 v2, 0xe8

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 85174
    .local v2, "width":I
    const/16 v2, 0x71

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 85175
    .local v3, "height":I
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/hW;->A03(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85176
    return-void

    .line 85177
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/hv;->A00:J

    .line 85178
    .local v2, "videoDurationUs":J
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    .line 85179
    const/16 p0, 0xc3

    const/16 v5, 0x25

    const/16 v0, 0x73

    invoke-static {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 85180
    const/16 p0, 0x52

    const/16 v5, 0x1f

    const/16 v0, 0x62

    invoke-static {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/gL;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85181
    :cond_2
    const/16 v2, 0x9c

    const/16 v1, 0x27

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85182
    const/16 v2, 0x35

    const/16 v1, 0x1d

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/gL;->A00(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85183
    .end local v2    # "videoDurationUs":J
    :catch_0
    move-exception v0

    .line 85184
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/gL;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85185
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 85186
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/gL;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85187
    :cond_3
    :goto_0
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/hv;IIII)Z
    .locals 1

    .line 85188
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hv;->A01:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hv;->A0O:Z

    if-eqz v0, :cond_0

    .line 85189
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/hW;->A03(II)Z

    move-result p0

    .line 85190
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/hW;->A03(II)Z

    move-result v0

    if-eq p0, v0, :cond_0

    .line 85191
    const/4 v0, 0x1

    return v0

    .line 85192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
