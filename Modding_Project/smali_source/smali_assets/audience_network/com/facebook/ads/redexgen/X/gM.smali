.class public final Lcom/facebook/ads/redexgen/X/gM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pi;,
        Lcom/facebook/ads/redexgen/X/Pj;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/OZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/OZ<",
            "Lcom/facebook/ads/redexgen/X/Pj;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/Pi;

.field public final A03:Lcom/facebook/ads/redexgen/X/Q7;

.field public final A04:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Pj;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Pj;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2783
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t5607oHfL2MNwmRFcsOr1jnyxzutumg5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jNVCF7hNBx7qTlxJtSxtZf62y0YMH9ti"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vdh53KDEVDvYPF4U9zJ9CmemLfeqkfcW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xmowDJGre"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZTG0qcJaBRai17vkpDLZ7jbeFwjjrIPL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kzc7Q54viT3CLivIFTQawvhHzc5bSJU6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6m9Kb2lg4QS4P0ZcGJ2XwsRwfv4UyCAv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gM;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gM;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pi;)V
    .locals 1

    .line 83175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gM;-><init>(Lcom/facebook/ads/redexgen/X/Pi;Z)V

    .line 83176
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pi;Z)V
    .locals 2

    .line 83177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83178
    const/16 v1, 0x1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/ga;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ga;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A01:Lcom/facebook/ads/redexgen/X/OZ;

    .line 83179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    .line 83180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    .line 83181
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A00:I

    .line 83182
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gM;->A02:Lcom/facebook/ads/redexgen/X/Pi;

    .line 83183
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/gM;->A06:Z

    .line 83184
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q7;-><init>(Lcom/facebook/ads/redexgen/X/Q6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    .line 83185
    return-void
.end method

.method private final A00(II)I
    .locals 3

    .line 83186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83187
    .local v0, "count":I
    .local v1, "i":I
    if-ge p2, v0, :cond_0

    .line 83188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83189
    .local v2, "op":Lcom/facebook/ads/redexgen/X/Pj;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83190
    .end local v1    # "i":I
    :cond_0
    return p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gM;->A07:[B

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

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gM;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x19t
        0x10t
        0x13t
        0x2t
        0x1at
        0xft
        0xct
        0x2t
        0x7t
    .end array-data
.end method

.method private final A03(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Pj;",
            ">;)V"
        }
    .end annotation

    .line 83191
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 83192
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 83193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gM;->A0A(Lcom/facebook/ads/redexgen/X/Pj;)V

    .line 83194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83195
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/gM;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83196
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/gM;->A08:[Ljava/lang/String;

    const-string v1, "ayjYK9F9Z6sDhNCNS52R1Qcr5XRGx639"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method


# virtual methods
.method public final A04(I)I
    .locals 1

    .line 83197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A00(II)I

    move-result v0

    return v0
.end method

.method public final A05(I)I
    .locals 3

    .line 83198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83199
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 83200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83201
    .local v2, "op":Lcom/facebook/ads/redexgen/X/Pj;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83202
    .end local v1    # "i":I
    :cond_0
    return p1
.end method

.method public final A06()V
    .locals 4

    .line 83203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83204
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_1

    .line 83205
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gM;->A02:Lcom/facebook/ads/redexgen/X/Pi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/gM;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/gM;->A08:[Ljava/lang/String;

    const-string v1, "Yhl0jQrdp33aIQ4Nx5XRCxKVlJRMQ99k"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "te80aWrb7iKuE4ta48s0tNKQ3kiAwVCD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Pi;->AD2(Lcom/facebook/ads/redexgen/X/Pj;)V

    const/4 v0, 0x0

    throw v0

    .line 83206
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gM;->A03(Ljava/util/List;)V

    .line 83207
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A00:I

    .line 83208
    return-void
.end method

.method public final A07()V
    .locals 3

    .line 83209
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gM;->A06()V

    .line 83210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83211
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 83212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83213
    .local v2, "op":Lcom/facebook/ads/redexgen/X/Pj;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83214
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gM;->A03(Ljava/util/List;)V

    .line 83215
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A00:I

    .line 83216
    return-void
.end method

.method public final A08()V
    .locals 3

    .line 83217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gM;->A03:Lcom/facebook/ads/redexgen/X/Q7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q7;->A04(Ljava/util/List;)V

    .line 83218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83219
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 83220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83221
    .local v2, "op":Lcom/facebook/ads/redexgen/X/Pj;
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83222
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83223
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 83224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gM;->A03(Ljava/util/List;)V

    .line 83225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/gM;->A03(Ljava/util/List;)V

    .line 83226
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A00:I

    .line 83227
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Pj;)V
    .locals 3

    .line 83228
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A06:Z

    if-nez v0, :cond_0

    .line 83229
    const/4 v2, 0x3

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gM;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83230
    :cond_0
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 83231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C()Z
    .locals 1

    .line 83232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(I)Z
    .locals 1

    .line 83233
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gM;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
