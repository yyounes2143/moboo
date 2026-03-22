.class public final Lcom/facebook/ads/redexgen/X/9Y;
.super Lcom/facebook/ads/redexgen/X/od;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static final A08:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/9Y;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public final A00:Z

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/or;

.field public final A05:Lcom/facebook/ads/redexgen/X/2a;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 553
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9Y;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/nR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nR;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A08:Lcom/facebook/ads/redexgen/X/1R;

    .line 554
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0E:Ljava/lang/String;

    .line 555
    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0D:Ljava/lang/String;

    .line 556
    const/16 v0, 0x3eb

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0C:Ljava/lang/String;

    .line 557
    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0A:Ljava/lang/String;

    .line 558
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0B:Ljava/lang/String;

    .line 559
    const/16 v0, 0x3ee

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A09:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    .line 28144
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p3

    move-object v2, p2

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/or;IZ)V

    .line 28145
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/or;IZ)V
    .locals 16

    .line 28146
    move/from16 v8, p8

    move-object/from16 v7, p7

    move/from16 v6, p6

    move-object/from16 v5, p5

    move-object/from16 v11, p3

    move-object/from16 v2, p2

    move/from16 v4, p1

    move v9, v4

    move-object v10, v2

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move v15, v8

    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/9Y;->A06(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/or;I)Ljava/lang/String;

    move-result-object v1

    .line 28147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 28148
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v12, p9

    move/from16 v3, p4

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/facebook/ads/redexgen/X/or;ILcom/facebook/ads/redexgen/X/2a;JZ)V

    .line 28149
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 28150
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/od;-><init>(Landroid/os/Bundle;)V

    .line 28151
    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A0E:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A03:I

    .line 28152
    sget-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A06:Ljava/lang/String;

    .line 28153
    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A0C:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:I

    .line 28154
    sget-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A0A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 28155
    .local v0, "rendererFormatBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A04:Lcom/facebook/ads/redexgen/X/or;

    .line 28156
    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A0B:Ljava/lang/String;

    .line 28157
    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A01:I

    .line 28158
    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A09:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A00:Z

    .line 28159
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9Y;->A05:Lcom/facebook/ads/redexgen/X/2a;

    .line 28160
    return-void

    .line 28161
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/or;->A0b:Lcom/facebook/ads/redexgen/X/1R;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1R;->A6X(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/facebook/ads/redexgen/X/or;ILcom/facebook/ads/redexgen/X/2a;JZ)V
    .locals 9

    .line 28162
    move-object v2, p0

    move-object v3, p0

    move-wide/from16 v7, p10

    move v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/od;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    .line 28163
    const/4 v1, 0x0

    const/4 v0, 0x1

    move/from16 v3, p12

    if-eqz v3, :cond_0

    if-ne p4, v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28164
    if-nez v5, :cond_1

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 28165
    iput p4, v2, Lcom/facebook/ads/redexgen/X/9Y;->A03:I

    .line 28166
    iput-object p5, v2, Lcom/facebook/ads/redexgen/X/9Y;->A06:Ljava/lang/String;

    .line 28167
    iput p6, v2, Lcom/facebook/ads/redexgen/X/9Y;->A02:I

    .line 28168
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9Y;->A04:Lcom/facebook/ads/redexgen/X/or;

    .line 28169
    move/from16 v0, p8

    iput v0, v2, Lcom/facebook/ads/redexgen/X/9Y;->A01:I

    .line 28170
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9Y;->A05:Lcom/facebook/ads/redexgen/X/2a;

    .line 28171
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/9Y;->A00:Z

    .line 28172
    return-void

    .line 28173
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static A01(Ljava/io/IOException;I)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 2

    .line 28174
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28175
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A03(Ljava/lang/RuntimeException;I)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Ljava/lang/RuntimeException;I)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 2

    .line 28176
    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static A04(Ljava/lang/Throwable;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/or;IZI)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 10

    .line 28177
    move v8, p4

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    .line 28178
    move-object v7, p3

    if-nez v7, :cond_0

    const/4 v8, 0x4

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    move/from16 v4, p6

    move v9, p5

    move v6, p2

    move-object v5, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/facebook/ads/redexgen/X/or;IZ)V

    .line 28179
    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9Y;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/or;I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            type = {
                "NEW_METHOD_ARGS"
            }
            value = "Throwable cause - linked with Error reporting"
        .end annotation
    .end param

    .line 28180
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 28181
    .local v0, "message":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 28182
    return-object v0

    .line 28183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_0

    .line 28184
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 28185
    :pswitch_0
    const/16 p0, 0x44

    const/16 v1, 0x18

    const/16 v0, 0x3c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28186
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0x2a

    const/4 v1, 0x2

    const/16 v0, 0x74

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28188
    :cond_3
    return-object v1

    .line 28189
    :pswitch_1
    const/16 p0, 0x2c

    const/16 v1, 0xc

    const/16 v0, 0x44

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28190
    goto :goto_1

    .line 28191
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p0, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x1b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0xe

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p0, 0x17

    const/16 v1, 0x13

    const/16 v0, 0x72

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28192
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/4a;->A0g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28193
    goto :goto_1

    .line 28194
    :pswitch_3
    const/16 p0, 0x38

    const/16 v1, 0xc

    const/16 v0, 0x3b

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9Y;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 28195
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9Y;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        -0x43t
        -0x36t
        -0x36t
        -0x39t
        -0x36t
        -0x7ct
        0x78t
        -0x3ft
        -0x3at
        -0x44t
        -0x43t
        -0x30t
        -0x6bt
        -0x53t
        -0x5ft
        -0x19t
        -0x10t
        -0xdt
        -0x12t
        -0x1et
        -0xbt
        -0x42t
        -0x25t
        -0x31t
        0x15t
        0x1et
        0x21t
        0x1ct
        0x10t
        0x23t
        0xet
        0x22t
        0x24t
        0x1ft
        0x1ft
        0x1et
        0x21t
        0x23t
        0x14t
        0x13t
        -0x14t
        -0x15t
        -0x2ft
        -0x2dt
        -0x1at
        -0x12t
        -0x10t
        -0xbt
        -0x1at
        -0x5ft
        -0x1at
        -0xdt
        -0xdt
        -0x10t
        -0xdt
        -0x35t
        -0x19t
        -0x13t
        -0x16t
        -0x25t
        -0x23t
        -0x68t
        -0x23t
        -0x16t
        -0x16t
        -0x19t
        -0x16t
        -0x32t
        -0x19t
        -0x22t
        -0xft
        -0x17t
        -0x22t
        -0x24t
        -0x13t
        -0x22t
        -0x23t
        -0x67t
        -0x15t
        -0x12t
        -0x19t
        -0x13t
        -0x1et
        -0x1at
        -0x22t
        -0x67t
        -0x22t
        -0x15t
        -0x15t
        -0x18t
        -0x15t
    .end array-data
.end method
