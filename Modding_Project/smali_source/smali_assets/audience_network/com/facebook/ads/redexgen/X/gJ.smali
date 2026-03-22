.class public final Lcom/facebook/ads/redexgen/X/gJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gJ;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gJ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gJ;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x5ft
        -0x4at
        -0x32t
        -0x3ct
        -0x36t
        -0x37t
        0x75t
        -0x3bt
        -0x3ct
        -0x38t
        -0x42t
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        -0x38t
        0x75t
        -0x3et
        -0x36t
        -0x38t
        -0x37t
        0x75t
        -0x49t
        -0x46t
        0x75t
        -0x3dt
        -0x3ct
        -0x3dt
        -0x7et
        -0x3dt
        -0x46t
        -0x44t
        -0x4at
        -0x37t
        -0x42t
        -0x35t
        -0x46t
        -0x75t
        -0x5ct
        -0x4dt
        -0x60t
        -0x59t
        0x5bt
        -0x61t
        -0x5ct
        -0x52t
        -0x51t
        -0x64t
        -0x57t
        -0x62t
        -0x60t
        0x5bt
        -0x58t
        -0x50t
        -0x52t
        -0x51t
        0x5bt
        -0x63t
        -0x60t
        0x5bt
        -0x57t
        -0x56t
        -0x57t
        0x68t
        -0x57t
        -0x60t
        -0x5et
        -0x64t
        -0x51t
        -0x5ct
        -0x4ft
        -0x60t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 83121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    if-eqz v0, :cond_0

    .line 83122
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 83123
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    .line 83124
    return-void
.end method

.method public final A03(II)V
    .locals 0

    .line 83125
    iput p1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A01:I

    .line 83126
    iput p2, p0, Lcom/facebook/ads/redexgen/X/gJ;->A02:I

    .line 83127
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6g;Z)V
    .locals 4

    .line 83128
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    .line 83129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    if-eqz v0, :cond_0

    .line 83130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 83131
    :cond_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    .line 83132
    .local v0, "layout":Lcom/facebook/ads/redexgen/X/QO;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 83133
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QO;->A1W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83134
    if-eqz p2, :cond_3

    .line 83135
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/gM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gM;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83136
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A04:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0B()I

    move-result v0

    invoke-virtual {v3, v0, p0}, Lcom/facebook/ads/redexgen/X/QO;->A1t(ILcom/facebook/ads/redexgen/X/QM;)V

    .line 83137
    :cond_1
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/QO;->A00:I

    if-le v1, v0, :cond_2

    .line 83138
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/QO;->A00:I

    .line 83139
    iput-boolean p2, v3, Lcom/facebook/ads/redexgen/X/QO;->A08:Z

    .line 83140
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->A0O()V

    .line 83141
    :cond_2
    return-void

    .line 83142
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->A1r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83143
    iget v2, p0, Lcom/facebook/ads/redexgen/X/gJ;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A02:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/facebook/ads/redexgen/X/QO;->A1s(IILcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/QM;)V

    goto :goto_0
.end method

.method public final A05(I)Z
    .locals 3

    .line 83144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    if-eqz v0, :cond_1

    .line 83145
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    mul-int/lit8 v2, v0, 0x2

    .line 83146
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 83147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 83148
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 83149
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A3u(II)V
    .locals 5

    .line 83150
    if-ltz p1, :cond_3

    .line 83151
    if-ltz p2, :cond_2

    .line 83152
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    mul-int/lit8 v4, v0, 0x2

    .line 83153
    .local v0, "storagePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    if-nez v0, :cond_1

    .line 83154
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    .line 83155
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 83156
    .end local v1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    aput p1, v0, v4

    .line 83157
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    add-int/lit8 v0, v4, 0x1

    aput p2, v1, v0

    .line 83158
    iget v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A00:I

    .line 83159
    return-void

    .line 83160
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    array-length v0, v0

    if-lt v4, v0, :cond_0

    .line 83161
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    .line 83162
    .local v1, "oldArray":[I
    mul-int/lit8 v0, v4, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    .line 83163
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gJ;->A03:[I

    array-length v1, v3

    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 83164
    .end local v0    # "storagePosition":I
    :cond_2
    const/16 v2, 0x25

    const/16 v1, 0x23

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83165
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gJ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
