.class public final Lcom/facebook/ads/redexgen/X/0m;
.super Lcom/facebook/ads/redexgen/X/7k;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/4J;

.field public final A05:Ljava/lang/String;

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 17
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1x7tMScy3OwIpxpoM6szN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Vc9HgGpBlB6xOFpUGzWjKY6X9B2Kx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Pa2y8LS5d14E5c2iioTa3o6alel444yu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nvl8EzHImhNd4skDgpAF61hzJTcSqLGr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "i0VKuTBNrkqino8Xl71fJI1fPr2JZBLb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "b0kCsBlNmzlDPYQHWIClkO446cJaLVwv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T6LNoF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e0xJgOhUsx7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0m;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 5128
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v2, 0x57

    const/16 v1, 0xb

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Ljava/lang/String;)V

    .line 5129
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 5130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x3f59999a    # 0.85f

    const/16 v2, 0x7d

    const/16 v1, 0xa

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    .line 5131
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x35

    if-ne v1, v0, :cond_4

    .line 5132
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5133
    .local v0, "initializationBytes":[B
    const/16 v0, 0x18

    aget-byte v0, v3, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A03:I

    .line 5134
    const/16 v0, 0x1a

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/16 v0, 0x1b

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/16 v0, 0x1c

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const/16 v0, 0x1d

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/0m;->A02:I

    .line 5135
    array-length v1, v3

    const/16 v0, 0x2b

    sub-int/2addr v1, v0

    .line 5136
    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0r([BII)Ljava/lang/String;

    move-result-object v6

    .line 5137
    .local v5, "fontFamily":Ljava/lang/String;
    const/16 v2, 0x3d

    const/4 v1, 0x5

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x87

    const/4 v1, 0x5

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v7

    :cond_1
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/0m;->A05:Ljava/lang/String;

    .line 5138
    const/16 v0, 0x19

    aget-byte v0, v3, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A01:I

    .line 5139
    aget-byte v0, v3, v5

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/0m;->A06:Z

    .line 5140
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A06:Z

    if-eqz v0, :cond_3

    .line 5141
    const/16 v0, 0xa

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xb

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 5142
    .local v1, "requestedVerticalPlacement":I
    int-to-float v2, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A01:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 5143
    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A00(FFF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A00:F

    .line 5144
    .end local v1    # "requestedVerticalPlacement":I
    :goto_0
    return-void

    .line 5145
    :cond_3
    iput v4, p0, Lcom/facebook/ads/redexgen/X/0m;->A00:F

    goto :goto_0

    .line 5146
    :cond_4
    iput v5, p0, Lcom/facebook/ads/redexgen/X/0m;->A03:I

    .line 5147
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A02:I

    .line 5148
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/0m;->A05:Ljava/lang/String;

    .line 5149
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/0m;->A06:Z

    .line 5150
    iput v4, p0, Lcom/facebook/ads/redexgen/X/0m;->A00:F

    .line 5151
    iput v0, p0, Lcom/facebook/ads/redexgen/X/0m;->A01:I

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0m;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const-string v1, "yGrIv6QCmXhG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x55

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5152
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0m;->A07(Z)V

    .line 5153
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v3

    .line 5154
    .local v0, "textLength":I
    if-nez v3, :cond_1

    .line 5155
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5157
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 5158
    .local v1, "textStartPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Z()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 5159
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v0, v2

    .line 5160
    .local v3, "bomSize":I
    sub-int/2addr v3, v0

    .line 5161
    if-eqz v1, :cond_2

    .line 5162
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5163
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0m;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x24t
        -0x2dt
        -0xft
        -0x10t
        -0x2dt
        0x18t
        0x21t
        0x17t
        -0x2dt
        -0x25t
        -0x15t
        -0x1et
        0x36t
        0x31t
        -0x1et
        0x25t
        0x37t
        0x27t
        0x16t
        0x27t
        0x3at
        0x36t
        -0x10t
        0x2et
        0x27t
        0x30t
        0x29t
        0x36t
        0x2at
        -0x16t
        -0x15t
        -0x1et
        -0x16t
        -0x33t
        -0x2et
        0x13t
        0x31t
        0x38t
        0x39t
        0x3ct
        0x33t
        0x38t
        0x31t
        -0x16t
        0x3dt
        0x3et
        0x43t
        0x36t
        -0x16t
        0x41t
        0x33t
        0x3et
        0x32t
        -0x16t
        0x3dt
        0x3et
        0x2bt
        0x3ct
        0x3et
        -0x16t
        -0xet
        -0x30t
        -0x1et
        -0x11t
        -0x1at
        -0x1dt
        0x14t
        0x32t
        0x35t
        0x2et
        0x23t
        0x21t
        0x34t
        0x29t
        0x2et
        0x27t
        -0x20t
        0x33t
        0x34t
        0x39t
        0x2ct
        -0x20t
        0x25t
        0x2et
        0x24t
        -0x20t
        -0x18t
        0x19t
        0x3dt
        -0x8t
        0x2ct
        0x9t
        0x2at
        0x28t
        0x34t
        0x29t
        0x2at
        0x37t
        -0x30t
        -0x17t
        -0x20t
        -0xdt
        -0x15t
        -0x20t
        -0x22t
        -0x11t
        -0x20t
        -0x21t
        -0x65t
        -0x12t
        -0x10t
        -0x23t
        -0x11t
        -0x1ct
        -0x11t
        -0x19t
        -0x20t
        -0x65t
        -0x1ft
        -0x16t
        -0x13t
        -0x18t
        -0x24t
        -0x11t
        -0x57t
        0xft
        -0x3t
        0xat
        0xft
        -0x37t
        0xft
        0x1t
        0xet
        0x5t
        0x2t
        -0x1ft
        -0x2dt
        -0x20t
        -0x29t
        -0x2ct
    .end array-data
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 3

    .line 5164
    if-eq p1, p2, :cond_0

    .line 5165
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v2, v0, 0x18

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr v2, v0

    .line 5166
    .local v0, "colorArgb":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5167
    .end local v0    # "colorArgb":I
    :cond_0
    return-void
.end method

.method public static A04(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 7

    .line 5168
    if-eq p1, p2, :cond_3

    .line 5169
    or-int/lit8 v4, p5, 0x21

    .line 5170
    .local v0, "flags":I
    and-int/lit8 v5, p1, 0x1

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const-string v1, "CK5gR0nAI76s8EUE0bHGc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "a3HU5o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v2, 0x1

    if-eqz v5, :cond_8

    const/4 v6, 0x1

    .line 5171
    .local v1, "isBold":Z
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    const/4 v5, 0x1

    .line 5172
    .local v4, "isItalic":Z
    :goto_1
    if-eqz v6, :cond_6

    .line 5173
    if-eqz v5, :cond_5

    .line 5174
    const/4 v1, 0x3

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5175
    :cond_1
    :goto_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 5176
    .local v3, "isUnderlined":Z
    :goto_3
    if-eqz v2, :cond_2

    .line 5177
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5178
    :cond_2
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    .line 5179
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5180
    .end local v0    # "flags":I
    .end local v1    # "isBold":Z
    .end local v3    # "isUnderlined":Z
    .end local v4    # "isItalic":Z
    :cond_3
    return-void

    .line 5181
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 5182
    :cond_5
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 5183
    :cond_6
    if-eqz v5, :cond_1

    .line 5184
    const/4 v1, 0x2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 5185
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 5186
    :cond_8
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 3

    .line 5187
    const/16 v2, 0x7d

    const/16 v1, 0xa

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 5188
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v0, 0xff0021

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5189
    :cond_0
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/4J;Landroid/text/SpannableStringBuilder;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5190
    move-object/from16 v3, p1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-lt v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0m;->A07(Z)V

    .line 5191
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v9

    .line 5192
    .local v0, "start":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v10

    .line 5193
    .local v1, "end":I
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 5194
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v7

    .line 5195
    .local v9, "fontFace":I
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 5196
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v13

    .line 5197
    .local v2, "colorRgba":I
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v2, 0x21

    const/4 v1, 0x2

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x57

    const/16 v1, 0xb

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-le v10, v3, :cond_0

    .line 5198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x42

    const/16 v1, 0x15

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    const/16 v1, 0x17

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5199
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5200
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5201
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 5202
    :cond_0
    if-lt v9, v10, :cond_2

    .line 5203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    const/16 v1, 0x1a

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5204
    return-void

    .line 5205
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5206
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/facebook/ads/redexgen/X/0m;->A03:I

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/0m;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 5207
    iget v14, v0, Lcom/facebook/ads/redexgen/X/0m;->A02:I

    move-object v12, v6

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/0m;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 5208
    return-void
.end method

.method public static A07(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5209
    if-eqz p0, :cond_0

    .line 5210
    return-void

    .line 5211
    :cond_0
    const/16 p0, 0x62

    const/16 v1, 0x1b

    const/16 v0, 0x26

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5212
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    move/from16 v1, p2

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 5213
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0m;->A01(Lcom/facebook/ads/redexgen/X/4J;)Ljava/lang/String;

    move-result-object v1

    .line 5214
    .local v0, "cueTextString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5215
    sget-object v0, Lcom/facebook/ads/redexgen/X/k5;->A02:Lcom/facebook/ads/redexgen/X/k5;

    return-object v0

    .line 5216
    :cond_0
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5217
    .local v1, "cueText":Landroid/text/SpannableStringBuilder;
    iget v12, v2, Lcom/facebook/ads/redexgen/X/0m;->A03:I

    .line 5218
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 5219
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0xff0000

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/0m;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 5220
    iget v12, v2, Lcom/facebook/ads/redexgen/X/0m;->A02:I

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    const/4 v13, -0x1

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/0m;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 5221
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/0m;->A05:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v11, v1, v6, v0}, Lcom/facebook/ads/redexgen/X/0m;->A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 5222
    iget v7, v2, Lcom/facebook/ads/redexgen/X/0m;->A00:F

    .line 5223
    .local v2, "verticalPlacement":F
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_8

    .line 5224
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v5

    .line 5225
    .local v3, "position":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v10

    .line 5226
    .local v5, "atomSize":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 5227
    .local v6, "atomType":I
    const v0, 0x7374796c

    const/4 v4, 0x2

    const/4 v9, 0x1

    if-ne v1, v0, :cond_2

    .line 5228
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v8

    sget-object v3, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v3, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const-string v1, "Z2UJzHF8zneH9ag5NgWte"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "yNPyx5"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    if-lt v8, v4, :cond_1

    :goto_1
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0m;->A07(Z)V

    .line 5229
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v3

    .line 5230
    .local v7, "styleRecordCount":I
    const/4 v1, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 5231
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v0, v11}, Lcom/facebook/ads/redexgen/X/0m;->A06(Lcom/facebook/ads/redexgen/X/4J;Landroid/text/SpannableStringBuilder;)V

    .line 5232
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5233
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 5234
    :cond_2
    const v0, 0x74626f78

    if-ne v1, v0, :cond_3

    iget-boolean v8, v2, Lcom/facebook/ads/redexgen/X/0m;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_6

    if-eqz v8, :cond_3

    .line 5235
    :goto_3
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v3, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v4, :cond_5

    :goto_4
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0m;->A07(Z)V

    .line 5236
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    .line 5237
    .local v7, "requestedVerticalPlacement":I
    int-to-float v3, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A01:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 5238
    .end local v2    # "verticalPlacement":F
    .local v8, "verticalPlacement":F
    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A00(FFF)F

    move-result v7

    .line 5239
    .end local v8    # "verticalPlacement":F
    .restart local v2    # "verticalPlacement":F
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/0m;->A04:Lcom/facebook/ads/redexgen/X/4J;

    add-int/2addr v5, v10

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 5240
    .end local v3    # "position":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const-string v1, "wTXVya3nfhs0Hhsed0pql"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "bT1NwA"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v4, :cond_5

    goto :goto_4

    .line 5241
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/0m;->A08:[Ljava/lang/String;

    const-string v1, "paw5WSKbqYtpnsyQNjpQb8Noh3AWg"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5242
    :cond_8
    nop

    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 5243
    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/3C;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 5244
    invoke-virtual {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 5245
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/3C;->A09(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 5246
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/k5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/k5;-><init>(Lcom/facebook/ads/redexgen/X/o2;)V

    .line 5247
    return-object v0
.end method
