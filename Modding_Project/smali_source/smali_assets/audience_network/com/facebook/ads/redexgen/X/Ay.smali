.class public final Lcom/facebook/ads/redexgen/X/Ay;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Av;,
        Lcom/facebook/ads/redexgen/X/Au;,
        Lcom/facebook/ads/redexgen/X/mi;,
        Lcom/facebook/ads/redexgen/X/mk;,
        Lcom/facebook/ads/redexgen/X/Aw;,
        Lcom/facebook/ads/redexgen/X/Ax;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static A00:I

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/redexgen/X/Au;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 609
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eqdzSiIdqnT3hCSsTENYLmZ4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qLAEi2WvCJu9wjJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "toce"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QmOxXIzlvE53d2X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WAyVnYX8HOamSHc7hCznsAV7J1o4yjh4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2Jg1vBhmBkCi6YoALSajSHGhL27exhse"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FyqWibsIBjeEGSoGFPMxHwupdmiGrYAl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dJbg5x7m2zG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A0S()V

    const/16 v2, 0x581

    const/16 v1, 0xa

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Ljava/util/regex/Pattern;

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A03:Ljava/util/HashMap;

    .line 611
    const/4 v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 29994
    sget v4, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "ayn8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    .line 29995
    const/4 v4, 0x0

    .line 29996
    .local v0, "result":I
    const/16 v2, 0x6dc

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0J(Ljava/lang/String;ZZ)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    .line 29997
    .local v1, "decoderInfo":Lcom/facebook/ads/redexgen/X/AR;
    if-eqz v0, :cond_1

    .line 29998
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AR;->A0V()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v2

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v0, v2, v3

    .line 29999
    .local p0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A03(I)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 30000
    .end local p0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30001
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_3

    const v0, 0x54600

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 30002
    :cond_1
    sput v4, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    .line 30003
    .end local v0    # "result":I
    .end local v1    # "decoderInfo":Lcom/facebook/ads/redexgen/X/AR;
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    return v0

    .line 30004
    :cond_3
    const v0, 0x2a300

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(I)I
    .locals 3

    .line 30005
    packed-switch p0, :pswitch_data_0

    .line 30006
    const/4 v0, -0x1

    return v0

    .line 30007
    :pswitch_0
    const/high16 v0, 0x800000

    return v0

    .line 30008
    :pswitch_1
    const/high16 p0, 0x400000

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "cAiGKOliFB77vtIZojZGlA8hvOCkEVbR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 30009
    :pswitch_2
    const/high16 p0, 0x200000

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "Kx02KfDWNZB3bbiKdLxxGACkAkNM6rJP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "WnzQHL4oKpbMUVBkEywLAA92oYxlOTj8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 30010
    :pswitch_3
    const/high16 v0, 0x100000

    return v0

    .line 30011
    :pswitch_4
    const/high16 v0, 0x80000

    return v0

    .line 30012
    :pswitch_5
    const/high16 p0, 0x40000

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "34IRfUzRBRFF7aBglEcwMApXZqeFGI1m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "iRGVlhZlB1b37DNJ3kG6hrLab0t0wQjp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "eT6IL44S7u9o4A5QFAcxcvIY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "bWAi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return p0

    .line 30013
    :pswitch_6
    const/high16 v0, 0x20000

    return v0

    .line 30014
    :pswitch_7
    const/high16 p0, 0x10000

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 30015
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30016
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "bdr4r1uDMPeXB3s0e5pOX5Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return p0

    .line 30017
    :pswitch_8
    const v0, 0x8000

    return v0

    .line 30018
    :pswitch_9
    const/16 v0, 0x4000

    return v0

    .line 30019
    :pswitch_a
    const/16 v0, 0x2000

    return v0

    .line 30020
    :pswitch_b
    const/16 v0, 0x1000

    return v0

    .line 30021
    :pswitch_c
    const/16 v0, 0x800

    return v0

    .line 30022
    :pswitch_d
    const/16 v0, 0x400

    return v0

    .line 30023
    :pswitch_e
    const/16 p0, 0x200

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "p3tScLodvmBhgJu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "blAckLRsjuERKNr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return p0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30024
    :pswitch_f
    const/16 v0, 0x100

    return v0

    .line 30025
    :pswitch_10
    const/16 v0, 0x80

    return v0

    .line 30026
    :pswitch_11
    const/16 v0, 0x40

    return v0

    .line 30027
    :pswitch_12
    const/16 v0, 0x20

    return v0

    .line 30028
    :pswitch_13
    const/16 v0, 0x10

    return v0

    .line 30029
    :pswitch_14
    const/16 v0, 0x8

    return v0

    .line 30030
    :pswitch_15
    const/4 v0, 0x4

    return v0

    .line 30031
    :pswitch_16
    const/4 v0, 0x2

    return v0

    .line 30032
    :pswitch_17
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(I)I
    .locals 3

    .line 30033
    sparse-switch p0, :sswitch_data_0

    .line 30034
    const/4 v0, -0x1

    return v0

    .line 30035
    :sswitch_0
    const/high16 v0, 0x10000

    return v0

    .line 30036
    :sswitch_1
    const p0, 0x8000

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "Dd2HPoEYdkjLRr8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "8RMIphYW42mwAMu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return p0

    .line 30037
    :sswitch_2
    const/16 v0, 0x4000

    return v0

    .line 30038
    :sswitch_3
    const/16 v0, 0x2000

    return v0

    .line 30039
    :sswitch_4
    const/16 v0, 0x1000

    return v0

    .line 30040
    :sswitch_5
    const/16 v0, 0x800

    return v0

    .line 30041
    :sswitch_6
    const/16 v0, 0x400

    return v0

    .line 30042
    :sswitch_7
    const/16 v0, 0x200

    return v0

    .line 30043
    :sswitch_8
    const/16 v0, 0x100

    return v0

    .line 30044
    :sswitch_9
    const/16 v0, 0x80

    return v0

    .line 30045
    :sswitch_a
    const/16 v0, 0x40

    return v0

    .line 30046
    :sswitch_b
    const/16 v0, 0x20

    return v0

    .line 30047
    :sswitch_c
    const/16 v0, 0x10

    return v0

    .line 30048
    :sswitch_d
    const/16 v0, 0x8

    return v0

    .line 30049
    :sswitch_e
    const/4 v0, 0x4

    return v0

    .line 30050
    :sswitch_f
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xc -> :sswitch_d
        0xd -> :sswitch_c
        0x14 -> :sswitch_b
        0x15 -> :sswitch_a
        0x16 -> :sswitch_9
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x29 -> :sswitch_4
        0x2a -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A03(I)I
    .locals 3

    .line 30051
    sparse-switch p0, :sswitch_data_0

    .line 30052
    const/4 v0, -0x1

    return v0

    .line 30053
    :sswitch_0
    const/high16 v0, 0x2200000

    return v0

    .line 30054
    :sswitch_1
    const/high16 v0, 0x900000

    return v0

    .line 30055
    :sswitch_2
    const v0, 0x564000

    return v0

    .line 30056
    :sswitch_3
    const/high16 v0, 0x220000

    return v0

    .line 30057
    :sswitch_4
    const/high16 v0, 0x200000

    return v0

    .line 30058
    :sswitch_5
    const/high16 v0, 0x140000

    return v0

    .line 30059
    :sswitch_6
    const v0, 0xe1000

    return v0

    .line 30060
    :sswitch_7
    const v0, 0x65400

    return v0

    .line 30061
    :sswitch_8
    const p0, 0x31800

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "3QcVs4uE13o5U89"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HwwNiq3rR5E2ArP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30062
    :sswitch_9
    const v0, 0x18c00

    return v0

    .line 30063
    :sswitch_a
    const/16 v0, 0x6300

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A04(I)I
    .locals 0

    .line 30064
    sparse-switch p0, :sswitch_data_0

    .line 30065
    const/4 p0, -0x1

    return p0

    .line 30066
    :sswitch_0
    const/16 p0, 0x40

    return p0

    .line 30067
    :sswitch_1
    const/16 p0, 0x20

    return p0

    .line 30068
    :sswitch_2
    const/16 p0, 0x10

    return p0

    .line 30069
    :sswitch_3
    const/16 p0, 0x8

    return p0

    .line 30070
    :sswitch_4
    const/4 p0, 0x4

    return p0

    .line 30071
    :sswitch_5
    const/4 p0, 0x2

    return p0

    .line 30072
    :sswitch_6
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_6
        0x4d -> :sswitch_5
        0x58 -> :sswitch_4
        0x64 -> :sswitch_3
        0x6e -> :sswitch_2
        0x7a -> :sswitch_1
        0xf4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A05(I)I
    .locals 3

    .line 30073
    sparse-switch p0, :sswitch_data_0

    .line 30074
    const/4 v0, -0x1

    return v0

    .line 30075
    :sswitch_0
    const/16 v0, 0x2a

    return v0

    .line 30076
    :sswitch_1
    const/16 v0, 0x27

    return v0

    .line 30077
    :sswitch_2
    const/16 v0, 0x1d

    return v0

    .line 30078
    :sswitch_3
    const/16 v0, 0x17

    return v0

    .line 30079
    :sswitch_4
    const/16 v0, 0x14

    return v0

    .line 30080
    :sswitch_5
    const/16 v0, 0x11

    return v0

    .line 30081
    :sswitch_6
    const/4 v0, 0x6

    return v0

    .line 30082
    :sswitch_7
    const/4 p0, 0x5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "69A91wQXEtxdKe6VEWAWvAWn2bPjhSLd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    .line 30083
    :sswitch_8
    const/4 v0, 0x4

    return v0

    .line 30084
    :sswitch_9
    const/4 v0, 0x3

    return v0

    .line 30085
    :sswitch_a
    const/4 v0, 0x2

    return v0

    .line 30086
    :sswitch_b
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "QMC9ZT5BEMY9TcRggpPTke3A"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "gCyl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0x11 -> :sswitch_5
        0x14 -> :sswitch_4
        0x17 -> :sswitch_3
        0x1d -> :sswitch_2
        0x27 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public static A06(I)I
    .locals 3

    .line 30087
    sparse-switch p0, :sswitch_data_0

    .line 30088
    const/4 v0, -0x1

    return v0

    .line 30089
    :sswitch_0
    const/16 v0, 0x2000

    return v0

    .line 30090
    :sswitch_1
    const/16 v0, 0x1000

    return v0

    .line 30091
    :sswitch_2
    const/16 v0, 0x800

    return v0

    .line 30092
    :sswitch_3
    const/16 v0, 0x200

    return v0

    .line 30093
    :sswitch_4
    const/16 v0, 0x100

    return v0

    .line 30094
    :sswitch_5
    const/16 p0, 0x80

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "FYHyz6Jn9nffJKB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "LZRAC8LId4dogw6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30095
    :sswitch_6
    const/16 v0, 0x40

    return v0

    .line 30096
    :sswitch_7
    const/16 v0, 0x20

    return v0

    .line 30097
    :sswitch_8
    const/16 v0, 0x10

    return v0

    .line 30098
    :sswitch_9
    const/16 v0, 0x8

    return v0

    .line 30099
    :sswitch_a
    const/4 v0, 0x4

    return v0

    .line 30100
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 30101
    :sswitch_c
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0xb -> :sswitch_b
        0x14 -> :sswitch_a
        0x15 -> :sswitch_9
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x32 -> :sswitch_4
        0x33 -> :sswitch_3
        0x3c -> :sswitch_2
        0x3d -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static A07(I)I
    .locals 3

    .line 30102
    packed-switch p0, :pswitch_data_0

    .line 30103
    const/4 p0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "vDav2EVX30wYgrXK4P9ZX6kx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "QW4Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30104
    :pswitch_0
    const/16 p0, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "pIa0SKSMXaKd1ZRZCUAsSAHaUimoLOpx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30105
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 30106
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 30107
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/AR;)I
    .locals 3

    .line 30108
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    .line 30109
    .local v0, "name":Ljava/lang/String;
    const/16 v2, 0x35d

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x618

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30110
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 30111
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_2

    const/16 v2, 0x2d5

    const/16 v1, 0x19

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30112
    const/4 v0, -0x1

    return v0

    .line 30113
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/AR;)I
    .locals 3

    .line 30114
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    const/16 v2, 0x35d

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ax;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 30115
    invoke-interface {p0, p2}, Lcom/facebook/ads/redexgen/X/Ax;->A8o(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Ax;->A8o(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/or;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/or;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 30117
    return-object v7

    .line 30118
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    const/16 v2, 0x57f

    const/4 v1, 0x2

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 30119
    .local v0, "parts":[Ljava/lang/String;
    const/16 v2, 0x6e5

    const/16 v1, 0x12

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0E(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 30121
    :cond_1
    const/4 v6, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "tNXQa1vGcfp5ezAoaXcp0CKZSytrXWro"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-object v3, v4, v6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 30122
    return-object v7

    .line 30123
    :sswitch_0
    const/16 v2, 0x72f

    const/4 v1, 0x4

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x659

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x644

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const/16 v2, 0x640

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const/16 v2, 0x611

    const/4 v1, 0x4

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_5
    const/16 v2, 0x609

    const/4 v1, 0x4

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const/16 v5, 0x60d

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "3GHWnNsivmk8fIs2ywxIWAiS03xMF18F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x11

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 30124
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0C(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 30125
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0G(Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 30126
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0N:Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 30127
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0F(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 30128
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0R:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0D(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_5
        0x2ddf23 -> :sswitch_6
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0C(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30129
    array-length v7, p1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v2, 0x1ac

    const/16 v1, 0x26

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    if-eq v7, v5, :cond_0

    .line 30130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30131
    return-object v6

    .line 30132
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p1, v0

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 30133
    .local v0, "objectTypeIndication":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A05(I)Ljava/lang/String;

    move-result-object v5

    .line 30134
    .local v1, "mimeType":Ljava/lang/String;
    const/16 v2, 0x5d3

    const/16 v1, 0xf

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30135
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 30136
    .local v5, "audioObjectTypeIndication":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A05(I)I

    move-result v1

    .line 30137
    .local v6, "profile":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 30138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30139
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30140
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v6
.end method

.method public static A0D(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30141
    array-length v5, p1

    const/16 v2, 0x133

    const/16 v1, 0x25

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ge v5, v4, :cond_0

    .line 30142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30143
    return-object v7

    .line 30144
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x6

    if-ne v2, v0, :cond_1

    .line 30145
    aget-object v2, p1, v5

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 30146
    .local v4, "profileInteger":I
    aget-object v2, p1, v5

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .local v0, "levelInteger":I
    goto :goto_0

    .line 30147
    .end local v0    # "levelInteger":I
    .end local v4    # "profileInteger":I
    :cond_1
    array-length v2, p1

    const/4 v0, 0x3

    if-lt v2, v0, :cond_4

    .line 30148
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 30149
    .local v0, "profileInteger":I
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30150
    .local v0, "levelInteger":I
    .restart local v4    # "profileInteger":I
    :goto_0
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ay;->A04(I)I

    move-result v3

    .line 30151
    .local v1, "profile":I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    .line 30152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x4bc

    const/16 v2, 0x15

    const/16 v0, 0x4a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30153
    return-object v7

    .line 30154
    :cond_2
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ay;->A02(I)I

    move-result v0

    .line 30155
    .local v6, "level":I
    if-ne v0, v2, :cond_3

    .line 30156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x4a9

    const/16 v2, 0x13

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30157
    return-object v7

    .line 30158
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 30159
    .end local v0    # "levelInteger":I
    .end local v1    # "profile":I
    .end local v4    # "profileInteger":I
    .end local v6    # "level":I
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30160
    return-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30161
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30162
    return-object v7
.end method

.method public static A0E(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30163
    array-length v7, p1

    const/4 v4, 0x3

    const/16 v2, 0x158

    const/16 v1, 0x2e

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v5

    if-ge v7, v4, :cond_0

    .line 30164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30165
    return-object v6

    .line 30166
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A04:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    aget-object v0, p1, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 30167
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30169
    return-object v6

    .line 30170
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 30171
    .local v1, "profileString":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0L(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 30172
    .local v2, "profile":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 30173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4f4

    const/16 v1, 0x25

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30174
    return-object v6

    .line 30175
    :cond_2
    const/4 v0, 0x2

    aget-object v4, p1, v0

    .line 30176
    .local v5, "levelString":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0K(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 30177
    .local v6, "level":Ljava/lang/Integer;
    if-nez v1, :cond_3

    .line 30178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d1

    const/16 v1, 0x23

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30179
    return-object v6

    .line 30180
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static A0F(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30181
    array-length v6, p1

    const/4 v5, 0x3

    const/16 v2, 0x1d2

    const/16 v1, 0x25

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v4

    if-ge v6, v5, :cond_0

    .line 30182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30183
    return-object v7

    .line 30184
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 30185
    .local v0, "profileInteger":I
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30186
    .local v1, "levelInteger":I
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ay;->A07(I)I

    move-result v2

    .line 30187
    .local v2, "profile":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1

    .line 30188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x564

    const/16 v1, 0x15

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30189
    return-object v7

    .line 30190
    :cond_1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Ay;->A06(I)I

    move-result v0

    .line 30191
    .local v6, "level":I
    if-ne v0, v1, :cond_2

    .line 30192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x551

    const/16 v1, 0x13

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30193
    return-object v7

    .line 30194
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 30195
    .end local v0    # "profileInteger":I
    .end local v1    # "levelInteger":I
    .end local v2    # "profile":I
    .end local v6    # "level":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30196
    return-object v7
.end method

.method public static A0G(Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30197
    array-length v6, p1

    const/4 v4, 0x4

    const/16 v2, 0x10e

    const/16 v1, 0x25

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    if-ge v6, v4, :cond_0

    .line 30198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30199
    return-object v7

    .line 30200
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 30201
    .local v0, "profileInteger":I
    const/4 v2, 0x2

    aget-object v1, p1, v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 30202
    .local v1, "levelInteger":I
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 30203
    .local v2, "bitDepthInteger":I
    if-eqz v6, :cond_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x494

    const/16 v1, 0x15

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30205
    return-object v7

    .line 30206
    :cond_1
    const/16 v1, 0x8

    if-eq v5, v1, :cond_2

    const/16 v0, 0xa

    if-eq v5, v0, :cond_2

    .line 30207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x46a

    const/16 v1, 0x17

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30208
    return-object v7

    .line 30209
    :cond_2
    if-ne v5, v1, :cond_3

    .line 30210
    const/4 v2, 0x1

    .line 30211
    .local v5, "profile":I
    .restart local v5    # "profile":I
    :goto_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ay;->A01(I)I

    move-result v1

    .line 30212
    .local v6, "level":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    .line 30213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x481

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30214
    return-object v7

    .line 30215
    .end local v5    # "profile":I
    :cond_3
    if-eqz p2, :cond_6

    iget-object v5, p2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A04:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "3Naka6lMBkjhse4CHD6m4SHW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4qp9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_5

    iget v1, p2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x7

    if-eq v1, v0, :cond_5

    iget v1, p2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x6

    if-ne v1, v0, :cond_6

    .line 30216
    :cond_5
    const/16 v2, 0x1000

    .restart local v5    # "profile":I
    goto :goto_0

    .line 30217
    .end local v5    # "profile":I
    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    .line 30218
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 30219
    .end local v0    # "profileInteger":I
    .end local v1    # "levelInteger":I
    .end local v2    # "bitDepthInteger":I
    .end local v5
    .end local v6    # "level":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30220
    return-object v7
.end method

.method public static A0H(Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/androidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30221
    array-length v6, p1

    const/4 v4, 0x4

    const/16 v2, 0x186

    const/16 v1, 0x26

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    if-ge v6, v4, :cond_0

    .line 30222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30223
    return-object v8

    .line 30224
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A04:Ljava/util/regex/Pattern;

    const/4 v6, 0x1

    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 30225
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "KQD5T9TnBB7A1Qau37dPwA8fp0YnC9XP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "pnb4d0x2BWoBz7rcvfU2b1k7Wl63lPA1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v7, :cond_1

    .line 30226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30227
    return-object v8

    .line 30228
    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 30229
    .local v1, "profileString":Ljava/lang/String;
    const/16 v2, 0x4d

    const/4 v1, 0x1

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30230
    const/4 v5, 0x1

    .line 30231
    .local v2, "profile":I
    .restart local v2    # "profile":I
    :goto_0
    const/4 v4, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30232
    .end local v2    # "profile":I
    :cond_3
    const/16 v2, 0x56

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30233
    if-eqz p2, :cond_4

    iget v1, p2, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    const/4 v0, 0x6

    if-ne v1, v0, :cond_4

    .line 30234
    const/16 v5, 0x1000

    .restart local v2    # "profile":I
    goto :goto_0

    .line 30235
    .end local v2    # "profile":I
    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "4AE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-object v1, p1, v4

    .line 30236
    .local v5, "levelString":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0M(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 30237
    .local v6, "level":Ljava/lang/Integer;
    if-nez v0, :cond_6

    .line 30238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x519

    const/16 v2, 0x1b

    const/16 v0, 0x53

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30239
    return-object v8

    .line 30240
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 30241
    .end local v2
    .end local v5    # "levelString":Ljava/lang/String;
    .end local v6    # "level":Ljava/lang/Integer;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x534

    const/16 v1, 0x1d

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30242
    return-object v8
.end method

.method public static A0I()Lcom/facebook/ads/redexgen/X/AR;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 30243
    const/16 v2, 0x5e2

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0J(Ljava/lang/String;ZZ)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    return-object v0
.end method

.method public static A0J(Ljava/lang/String;ZZ)Lcom/facebook/ads/redexgen/X/AR;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 30244
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ay;->A0R(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 30245
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/AR;

    goto :goto_0
.end method

.method public static A0K(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 30246
    const/4 v10, 0x0

    if-nez p0, :cond_0

    .line 30247
    return-object v10

    .line 30248
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 30249
    return-object v10

    .line 30250
    :sswitch_0
    const/16 v2, 0x54

    const/4 v1, 0x2

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x52

    const/4 v1, 0x2

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x50

    const/4 v1, 0x2

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x4e

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x4b

    const/4 v1, 0x2

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x49

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x47

    const/4 v1, 0x2

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const/16 v2, 0x45

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0x43

    const/4 v1, 0x2

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0x41

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x3f

    const/4 v4, 0x2

    const/16 v3, 0x6f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "4lxnqF3Aq6PG5fAKBVQihAUdAnfaVY4u"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_b
    const/16 v2, 0x3d

    const/4 v1, 0x2

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const/16 v2, 0x3b

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 30251
    :pswitch_0
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30252
    :pswitch_1
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30253
    :pswitch_2
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30254
    :pswitch_3
    const/16 v3, 0x200

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "JZSyC5vCBXuabnbyozrLobOBW6DRabKm"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SUTiquDjBRLooF3seq5WKCluMSkODYPH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "4frbtvvdB1MyLLrjo3HhsejHsVGyEKsL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ORKdFCu3BJGZr1GMWmsvkKy1b1R8zlrH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30255
    :pswitch_4
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "TGauph7jBQEYmTr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "n0Og3rwDrR2czMW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30256
    :pswitch_5
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30257
    :pswitch_6
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    return-object v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "UDGIwR651ijO548zFQsUwwxK"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "M6So"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 30258
    :pswitch_7
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30259
    :pswitch_8
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30260
    :pswitch_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30261
    :pswitch_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30262
    :pswitch_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_5

    return-object v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "NcQyspmINFMcRuLYZZaVZBrz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mM9F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 30263
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "XQhIYEIiJgH52NRyploGMAGgN5DPAsce"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 30264
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_c
        0x602 -> :sswitch_b
        0x603 -> :sswitch_a
        0x604 -> :sswitch_9
        0x605 -> :sswitch_8
        0x606 -> :sswitch_7
        0x607 -> :sswitch_6
        0x608 -> :sswitch_5
        0x609 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_1
        0x622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0L(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 30265
    const/4 v7, 0x0

    if-nez p0, :cond_0

    .line 30266
    return-object v7

    .line 30267
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 30268
    return-object v7

    .line 30269
    :pswitch_0
    const/16 v2, 0x4b

    const/4 v1, 0x2

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x49

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x47

    const/4 v1, 0x2

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x45

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x43

    const/4 v1, 0x2

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x41

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x3f

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x3d

    const/4 v1, 0x2

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :pswitch_8
    const/16 v2, 0x3b

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_9
    const/16 v2, 0x39

    const/4 v1, 0x2

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 30270
    :pswitch_a
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30271
    :pswitch_b
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30272
    :pswitch_c
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30273
    :pswitch_d
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30274
    :pswitch_e
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30275
    :pswitch_f
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30276
    :pswitch_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "0KPemZPlBkz6ir7aaqTED1Pw3reeXjRU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kXrOI8miBty6c848hwuI9lm7Gcuo04IC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 30277
    :pswitch_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30278
    :pswitch_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30279
    :pswitch_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static A0M(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 12

    .line 30280
    const/4 v11, 0x0

    if-nez p0, :cond_0

    .line 30281
    return-object v11

    .line 30282
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/16 v8, 0x10

    const/4 v7, 0x4

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 30283
    return-object v11

    .line 30284
    :sswitch_0
    const/16 v2, 0x213

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x20f

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x20b

    const/4 v1, 0x4

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x203

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1ff

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x1fb

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x1f7

    const/4 v4, 0x4

    const/16 v3, 0x37

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "nulQl7CSoY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0xf9

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_8
    const/16 v2, 0xf5

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_9
    const/16 v2, 0xf1

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0xed

    const/4 v4, 0x4

    const/16 v3, 0x71

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "gU6PtQLn9s6J6gQuv9ZEK0nw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GdK9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_b
    const/16 v2, 0xe9

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_c
    const/16 v2, 0xe5

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_d
    const/16 v2, 0xe1

    const/4 v1, 0x4

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_e
    const/16 v2, 0xdd

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_f
    const/16 v2, 0x227

    const/4 v1, 0x3

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_10
    const/16 v2, 0x224

    const/4 v1, 0x3

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_11
    const/16 v2, 0x221

    const/4 v1, 0x3

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_12
    const/16 v2, 0x21e

    const/4 v1, 0x3

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_13
    const/16 v2, 0x217

    const/4 v1, 0x3

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_14
    const/16 v2, 0x109

    const/4 v1, 0x3

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_15
    const/16 v2, 0x106

    const/4 v1, 0x3

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "n"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_16
    const/16 v2, 0x207

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "crD2koPf8HiM7FLITwbLUAokMU0ofExW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_17
    const/16 v2, 0x103

    const/4 v1, 0x3

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_18
    const/16 v2, 0x100

    const/4 v1, 0x3

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_19
    const/16 v2, 0xfd

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    .line 30285
    :pswitch_0
    const/high16 v0, 0x2000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30286
    :pswitch_1
    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30287
    :pswitch_2
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30288
    :pswitch_3
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30289
    :pswitch_4
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30290
    :pswitch_5
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30291
    :pswitch_6
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30292
    :pswitch_7
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30293
    :pswitch_8
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30294
    :pswitch_9
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "4yKsGogzWqFml28tpN5dAAPmkRirWlaH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    .line 30295
    :pswitch_a
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30296
    :pswitch_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30297
    :pswitch_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30298
    :pswitch_d
    const/high16 v0, 0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30299
    :pswitch_e
    const/high16 v0, 0x400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30300
    :pswitch_f
    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30301
    :pswitch_10
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30302
    :pswitch_11
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30303
    :pswitch_12
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30304
    :pswitch_13
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30305
    :pswitch_14
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30306
    :pswitch_15
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30307
    :pswitch_16
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30308
    :pswitch_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30309
    :pswitch_18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 30310
    :pswitch_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_15
        0x11562 -> :sswitch_14
        0x123a9 -> :sswitch_13
        0x12406 -> :sswitch_12
        0x12409 -> :sswitch_11
        0x12463 -> :sswitch_10
        0x12466 -> :sswitch_f
        0x2178e7 -> :sswitch_e
        0x2178ea -> :sswitch_d
        0x217944 -> :sswitch_c
        0x217947 -> :sswitch_b
        0x21794a -> :sswitch_a
        0x2179a1 -> :sswitch_9
        0x2179a4 -> :sswitch_8
        0x2179a7 -> :sswitch_7
        0x234a63 -> :sswitch_6
        0x234a66 -> :sswitch_5
        0x234ac0 -> :sswitch_4
        0x234ac3 -> :sswitch_3
        0x234ac6 -> :sswitch_16
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0N(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0O(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 30311
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 30312
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 30313
    .local v3, "supportedType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30314
    return-object v1

    .line 30315
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30316
    :cond_1
    const/16 v2, 0x6e5

    const/16 v1, 0x12

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30317
    const/16 v2, 0x28b

    const/16 v1, 0x15

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30318
    const/16 v2, 0x70e

    const/16 v1, 0xc

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30319
    :cond_2
    const/16 v4, 0x2ee

    const/16 v3, 0x15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "SNR7DEuQkTqundc8fpfLWSSq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Am34"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30320
    const/16 v2, 0x420

    const/16 v1, 0x22

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30321
    :cond_4
    const/16 v2, 0x6f7

    const/16 v1, 0xd

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30322
    :cond_5
    const/16 v2, 0x59b

    const/16 v1, 0xa

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0x390

    const/16 v1, 0x14

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30323
    const/16 v2, 0x5eb

    const/16 v1, 0xf

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30324
    :cond_6
    const/16 p0, 0x5bd

    const/16 v4, 0xa

    const/16 v3, 0x32

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 30325
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30326
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "F6UQuKTk39X0DFpi3syODLNA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "oGjK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30327
    const/16 v2, 0x3a4

    const/16 v1, 0x14

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 30328
    const/16 v2, 0x5fa

    const/16 v1, 0xf

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30329
    :cond_8
    const/16 v2, 0x592

    const/16 v1, 0x9

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v2, 0x37d

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30330
    const/16 v2, 0x5c7

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30331
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/or;)Ljava/lang/String;
    .locals 5

    .line 30332
    const/16 v2, 0x5af

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30333
    const/16 v2, 0x5a5

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "ZfndW6AJBdBNuLe7GaNBaOlzT6fPhO3e"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "cwvehiRLBehKtkGil8NX01GWyhG4bC3G"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 30334
    :cond_0
    const/16 v2, 0x6e5

    const/16 v1, 0x12

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30335
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A0B(Lcom/facebook/ads/redexgen/X/or;)Landroid/util/Pair;

    move-result-object v0

    .line 30336
    .local v0, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    .line 30337
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30338
    .local v1, "profile":I
    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x100

    if-ne v1, v0, :cond_2

    .line 30339
    :cond_1
    const/16 v2, 0x704

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30340
    :cond_2
    const/16 v0, 0x200

    if-ne v1, v0, :cond_3

    .line 30341
    const/16 p0, 0x6dc

    const/16 v4, 0x9

    const/16 v3, 0x13

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "uUyr2eIguxRStOoGPtni7X3Qg6do19s"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30342
    .end local v0    # "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "profile":I
    :cond_3
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "fWQmLDMHB8f7NLxxt23iYDut8JSJcJup"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "lo0RJuE4BwIH2JQYtOHz0H7ocrHx9GAy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/Au;Lcom/facebook/ads/redexgen/X/Aw;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Au;",
            "Lcom/facebook/ads/redexgen/X/Aw;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    .line 30343
    const/16 v2, 0x6b3

    const/16 v1, 0xf

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x6cb

    const/16 v1, 0x11

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30344
    .local v5, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    move-object/from16 v7, p0

    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/Au;->A00:Ljava/lang/String;

    .line 30345
    .local v15, "mimeType":Ljava/lang/String;
    move-object/from16 v8, p1

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Aw;->A7H()I

    move-result v15

    .line 30346
    .local v14, "numberOfCodecs":I
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Aw;->AIK()Z

    move-result v4

    .line 30347
    .local v13, "secureDecodersExplicit":Z
    const/4 v3, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v3, v15, :cond_e

    .line 30348
    invoke-interface {v8, v3}, Lcom/facebook/ads/redexgen/X/Aw;->A7I(I)Landroid/media/MediaCodecInfo;

    move-result-object v11

    .line 30349
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Ay;->A0V(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 30350
    :cond_0
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 30351
    .local v7, "name":Ljava/lang/String;
    invoke-static {v11, v2, v4, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A0d(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 30352
    :cond_1
    invoke-static {v11, v2, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A0O(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v1

    sget-object v12, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v0, 0x19

    if-eq v12, v0, :cond_d

    .line 30353
    .local v6, "codecMimeType":Ljava/lang/String;
    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v12, "hhtQN1V1UBWomVF"

    const/4 v0, 0x1

    aput-object v12, v13, v0

    const-string v12, "fxrAGgmaAGt3AA1"

    const/4 v0, 0x3

    aput-object v12, v13, v0

    if-nez v1, :cond_3

    .line 30354
    .end local v0
    .end local v7    # "name":Ljava/lang/String;
    .end local p2
    .end local p4
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .end local p5
    .restart local v9    # "i":I
    goto :goto_0

    .line 30355
    :cond_3
    :try_start_1
    invoke-virtual {v11, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 30356
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-interface {v8, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Aw;->AAJ(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 30357
    .local v22, "tunnelingSupported":Z
    invoke-interface {v8, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Aw;->AAI(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    .line 30358
    .local p0, "tunnelingRequired":Z
    iget-boolean v12, v7, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    if-nez v12, :cond_4

    if-nez v13, :cond_2

    :cond_4
    iget-boolean v12, v7, Lcom/facebook/ads/redexgen/X/Au;->A02:Z

    if-eqz v12, :cond_5

    if-nez v14, :cond_5

    goto :goto_1

    .line 30359
    :cond_5
    invoke-interface {v8, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Aw;->AAJ(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 30360
    .local v12, "secureSupported":Z
    invoke-interface {v8, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Aw;->AAI(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 30361
    .local p1, "secureRequired":Z
    iget-boolean v13, v7, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    if-nez v13, :cond_6

    if-nez v14, :cond_2

    :cond_6
    iget-boolean v13, v7, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    if-eqz v13, :cond_7

    if-nez v12, :cond_7

    goto :goto_1

    .line 30362
    :cond_7
    invoke-static {v11, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A0b(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v20

    .line 30363
    .local v10, "hardwareAccelerated":Z
    invoke-static {v11, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A0c(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v21

    .line 30364
    .local v11, "softwareOnly":Z
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Ay;->A0Z(Landroid/media/MediaCodecInfo;)Z

    move-result v22

    .line 30365
    .end local v12    # "secureSupported":Z
    .local v14, "secureSupported":Z
    .local v17, "numberOfCodecs":I
    .local v12, "vendor":Z
    if-eqz v4, :cond_8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-boolean v11, v7, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    if-eq v11, v12, :cond_9

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30366
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v14    # "secureSupported":Z
    .end local v22    # "tunnelingSupported":Z
    .end local p0    # "tunnelingRequired":Z
    .end local p1    # "secureRequired":Z
    :catch_0
    move-exception v16

    goto :goto_3

    .line 30367
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v14    # "secureSupported":Z
    .restart local v22    # "tunnelingSupported":Z
    .restart local p0    # "tunnelingRequired":Z
    .restart local p1    # "secureRequired":Z
    :cond_8
    :goto_2
    if-nez v4, :cond_a

    :try_start_3
    iget-boolean v11, v7, Lcom/facebook/ads/redexgen/X/Au;->A01:Z

    if-nez v11, :cond_a

    .line 30368
    :cond_9
    const/16 p0, 0x0

    const/16 p1, 0x0

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .local p2, "codecMimeType":Ljava/lang/String;
    move-object v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7
    .local p3, "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .local p4, "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .local p5, "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .local p6, "secureDecodersExplicit":Z
    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .local v2, "numberOfCodecs":I
    .local p7, "secureSupported":Z
    :try_start_4
    move-object/from16 v18, v1

    move-object/from16 v19, v0

    move-object/from16 v17, v5

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/AR;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    .line 30369
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 30370
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local p0    # "tunnelingRequired":Z
    .end local p1    # "secureRequired":Z
    .end local p7
    :catch_1
    move-exception v16

    move-object v2, v2

    goto :goto_3

    .end local v2    # "numberOfCodecs":I
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v17    # "numberOfCodecs":I
    :catch_2
    move-exception v16

    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    goto :goto_3

    .line 30371
    .end local v2    # "numberOfCodecs":I
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    .restart local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v6    # "codecMimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v10    # "hardwareAccelerated":Z
    .restart local v11    # "softwareOnly":Z
    .restart local v12    # "vendor":Z
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "secureSupported":Z
    .restart local v17    # "numberOfCodecs":I
    .restart local v22    # "tunnelingSupported":Z
    .restart local p0    # "tunnelingRequired":Z
    .restart local p1    # "secureRequired":Z
    .end local v6    # "codecMimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "secureSupported":Z
    .end local v17    # "numberOfCodecs":I
    .restart local v2    # "numberOfCodecs":I
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    :cond_a
    if-nez v4, :cond_2

    if-eqz v12, :cond_2

    .line 30372
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local p3
    .restart local v7    # "name":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v13, 0x2e

    const/4 v12, 0x7

    const/4 v11, 0x6

    invoke-static {v13, v12, v11}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 30373
    const/16 p0, 0x0

    const/16 p1, 0x1

    move-object/from16 v17, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .end local v15    # "mimeType":Ljava/lang/String;
    .local v6, "mimeType":Ljava/lang/String;
    :try_start_7
    move-object/from16 v18, v1

    move-object/from16 v19, v0

    move/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    invoke-static/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/AR;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    .line 30374
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 30375
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "hardwareAccelerated":Z
    .end local v11    # "softwareOnly":Z
    .end local v12    # "vendor":Z
    .end local v22    # "tunnelingSupported":Z
    .end local p0    # "tunnelingRequired":Z
    .end local p1    # "secureRequired":Z
    .end local p7
    :catch_3
    move-exception v16

    goto :goto_3

    .end local v6    # "mimeType":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_4
    move-exception v16

    .end local v15    # "mimeType":Ljava/lang/String;
    .restart local v6    # "mimeType":Ljava/lang/String;
    goto :goto_3

    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local p3
    :catch_5
    move-exception v16

    .end local v15    # "mimeType":Ljava/lang/String;
    .end local p3
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    goto :goto_3

    .end local v2    # "numberOfCodecs":I
    .end local p2
    .end local p4
    .end local p5
    .end local p6
    .local v6, "codecMimeType":Ljava/lang/String;
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v9    # "i":I
    .restart local v13    # "secureDecodersExplicit":Z
    .local v14, "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    :catch_6
    move-exception v16

    .line 30376
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v9    # "i":I
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "numberOfCodecs":I
    .local v6, "mimeType":Ljava/lang/String;
    .restart local p2
    .restart local p4
    .restart local p5
    .restart local p6
    :goto_3
    :try_start_8
    sget v14, Lcom/facebook/ads/redexgen/X/4a;->A02:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/16 v13, 0x17

    sget-object v12, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v11, v12, v0

    const/4 v0, 0x2

    aget-object v0, v12, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v11, v0, :cond_b

    sget-object v12, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v11, "ojaoIwCNV8ZmyUT"

    const/4 v0, 0x1

    aput-object v11, v12, v0

    const-string v11, "4HUY0PE8lMEDJ8l"

    const/4 v0, 0x3

    aput-object v11, v12, v0

    const/16 v12, 0x267

    const/16 v11, 0xe

    const/16 v0, 0x50

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    if-gt v14, v13, :cond_c

    goto :goto_4

    :cond_b
    const/16 v12, 0x267

    const/16 v11, 0xe

    const/16 v0, 0x50

    invoke-static {v12, v11, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    if-gt v14, v13, :cond_c

    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 30377
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x45b

    const/16 v11, 0xf

    const/16 v1, 0x30

    invoke-static {v12, v11, v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v11, 0x2

    const/16 v2, 0x1f

    const/16 v1, 0x31

    invoke-static {v11, v2, v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 30378
    :goto_5
    return-object v6

    .line 30379
    .end local v9
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p2
    .restart local p4
    .restart local p5
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xc7

    const/16 v4, 0x16

    const/16 v3, 0x5c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v2, 0x5a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local p2
    .local v4, "codecMimeType":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x21

    const/4 v2, 0x1

    const/4 v1, 0x2

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 30380
    .end local p8
    .end local p9
    throw v16
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 30381
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30382
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "numberOfCodecs":I
    .end local v4    # "codecMimeType":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local p4
    .end local p5
    .end local p6
    .restart local v13    # "secureDecodersExplicit":Z
    .restart local v14    # "numberOfCodecs":I
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local p8
    .restart local p9
    :cond_e
    return-object v6

    .line 30383
    .end local v5    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v13    # "secureDecodersExplicit":Z
    .end local v14    # "numberOfCodecs":I
    .end local v15    # "mimeType":Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 30384
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Av;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Av;-><init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/At;)V

    throw v0
.end method

.method public static declared-synchronized A0R(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Av;
        }
    .end annotation

    const-class v7, Lcom/facebook/ads/redexgen/X/Ay;

    monitor-enter v7

    .line 30385
    :try_start_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Au;

    invoke-direct {v3, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Au;-><init>(Ljava/lang/String;ZZ)V

    .line 30386
    .local v1, "key":Lcom/facebook/ads/redexgen/X/Au;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 30387
    .local v2, "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30388
    monitor-exit v7

    return-object v0

    .line 30389
    :cond_0
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/4 v2, 0x0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 30390
    new-instance v0, Lcom/facebook/ads/redexgen/X/mi;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mi;-><init>(ZZ)V

    .line 30391
    .local v3, "mediaCodecList":Lcom/facebook/ads/redexgen/X/Aw;
    :goto_0
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0Q(Lcom/facebook/ads/redexgen/X/Au;Lcom/facebook/ads/redexgen/X/Aw;)Ljava/util/ArrayList;

    move-result-object v5

    .line 30392
    .local v6, "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    if-eqz p1, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-gt v1, v0, :cond_1

    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_1

    .line 30393
    new-instance v0, Lcom/facebook/ads/redexgen/X/mk;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/mk;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    .line 30394
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0Q(Lcom/facebook/ads/redexgen/X/Au;Lcom/facebook/ads/redexgen/X/Aw;)Ljava/util/ArrayList;

    move-result-object v5

    .line 30395
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30396
    const/16 v2, 0x267

    const/16 v1, 0xe

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x234

    const/16 v2, 0x33

    const/16 v0, 0x3d

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v4, 0x22

    const/16 v2, 0xc

    const/16 v0, 0x56

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30397
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30398
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 30399
    :cond_1
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A0T(Ljava/lang/String;Ljava/util/List;)V

    .line 30400
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Am;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v1

    .line 30401
    .local v4, "immutableDecoderInfos":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A03:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30402
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/mk;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/mk;-><init>(Lcom/facebook/ads/redexgen/X/At;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30403
    :goto_1
    monitor-exit v7

    return-object v1

    .line 30404
    .end local v1    # "key":Lcom/facebook/ads/redexgen/X/Au;
    .end local v2    # "cachedDecoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "mediaCodecList":Lcom/facebook/ads/redexgen/X/Aw;
    .end local v4    # "immutableDecoderInfos":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local v6    # "decoderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    .end local p0    # null:Ljava/lang/String;
    .end local p1    # null:Z
    .end local p2    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static A0S()V
    .locals 1

    const/16 v0, 0x748

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x79t
        -0x71t
        0x5et
        0x66t
        -0x5ct
        -0x61t
        -0x59t
        -0x56t
        -0x5dt
        -0x5et
        0x5et
        -0x4et
        -0x53t
        0x5et
        -0x51t
        -0x4dt
        -0x5dt
        -0x50t
        -0x49t
        0x5et
        -0x5ft
        -0x61t
        -0x52t
        -0x61t
        -0x60t
        -0x59t
        -0x56t
        -0x59t
        -0x4et
        -0x59t
        -0x5dt
        -0x4ft
        0x67t
        0x38t
        -0x6ft
        -0x7dt
        -0x5ct
        -0x2at
        -0x2at
        -0x28t
        -0x30t
        -0x34t
        -0x2ft
        -0x36t
        -0x63t
        -0x7dt
        0x41t
        -0x7at
        0x78t
        0x76t
        -0x78t
        -0x7bt
        0x78t
        -0x48t
        -0x3t
        0x1t
        -0x48t
        0x42t
        0x42t
        -0x5at
        -0x59t
        0x55t
        0x57t
        -0x54t
        -0x51t
        0x6ft
        0x73t
        0x41t
        0x46t
        -0x73t
        -0x6dt
        -0x62t
        -0x5bt
        -0x5ft
        -0x57t
        0x63t
        0x6ct
        -0x49t
        -0x59t
        -0x5at
        0x57t
        0x57t
        0x41t
        0x42t
        0x44t
        0x46t
        0x67t
        -0x74t
        -0x78t
        -0x74t
        -0x55t
        -0x65t
        -0x7ft
        -0x7ft
        -0x7dt
        -0x7ct
        -0x5bt
        -0x5dt
        -0x51t
        -0x5ct
        -0x5bt
        -0x4et
        0x5ct
        0x4at
        0x4et
        0x49t
        0x4dt
        0x77t
        0x65t
        0x69t
        0x64t
        0x69t
        0x79t
        0x67t
        0x6ct
        0x66t
        0x6at
        -0x71t
        0x7dt
        -0x7et
        0x7ct
        -0x7ft
        -0x61t
        -0x6et
        -0x6et
        -0x74t
        -0x72t
        -0x46t
        -0x53t
        -0x53t
        -0x59t
        -0x56t
        -0x3bt
        -0x48t
        -0x48t
        -0x4et
        -0x48t
        0x5at
        0x4dt
        0x4dt
        0x48t
        0x4dt
        -0x48t
        -0x42t
        -0x3bt
        -0x4at
        -0x4at
        -0x48t
        -0x47t
        -0x26t
        -0x28t
        -0x1ct
        -0x27t
        -0x26t
        -0x19t
        -0x3ct
        -0x36t
        -0x2ft
        -0x3et
        -0x32t
        -0x2dt
        -0x31t
        -0x3dt
        -0x3bt
        -0x1at
        -0x1ct
        -0x10t
        -0x1bt
        -0x1at
        -0xdt
        -0x49t
        -0x43t
        -0x3ct
        -0x3ft
        -0x3ct
        -0x59t
        -0x48t
        -0x27t
        -0x29t
        -0x1dt
        -0x28t
        -0x27t
        -0x1at
        -0x33t
        -0x2dt
        -0x26t
        -0x20t
        -0x7t
        -0x4t
        -0x14t
        -0xdt
        -0x3t
        -0x32t
        -0x11t
        -0x13t
        -0x7t
        -0x12t
        -0x11t
        -0x4t
        -0x51t
        -0x36t
        -0x2et
        -0x2bt
        -0x32t
        -0x33t
        -0x77t
        -0x23t
        -0x28t
        -0x77t
        -0x26t
        -0x22t
        -0x32t
        -0x25t
        -0x1et
        -0x77t
        -0x34t
        -0x28t
        -0x33t
        -0x32t
        -0x34t
        -0x77t
        -0x3ft
        -0x56t
        -0x55t
        -0x57t
        0x67t
        0x50t
        0x51t
        0x52t
        -0x44t
        -0x5bt
        -0x57t
        -0x5ct
        -0x77t
        0x72t
        0x76t
        0x74t
        -0x3at
        -0x51t
        -0x4dt
        -0x4ct
        -0x4et
        -0x65t
        -0x5et
        -0x66t
        0x58t
        0x41t
        0x48t
        0x43t
        -0x80t
        0x69t
        0x70t
        0x6et
        -0x5ft
        -0x74t
        -0x77t
        -0x4ft
        -0x61t
        -0x67t
        -0x75t
        0x79t
        0x76t
        0x72t
        0x63t
        0x5at
        -0x5dt
        -0x6ct
        -0x72t
        -0x54t
        -0x4ft
        -0x6bt
        -0x4dt
        -0x46t
        -0x45t
        -0x42t
        -0x4bt
        -0x46t
        -0x4dt
        0x6ct
        -0x47t
        -0x53t
        -0x48t
        -0x4et
        -0x45t
        -0x42t
        -0x47t
        -0x4ft
        -0x50t
        0x6ct
        -0x73t
        -0x5et
        0x7dt
        0x6ct
        -0x51t
        -0x45t
        -0x50t
        -0x4ft
        -0x51t
        0x6ct
        -0x41t
        -0x40t
        -0x42t
        -0x4bt
        -0x46t
        -0x4dt
        -0x7at
        0x6ct
        0x78t
        -0x6at
        -0x63t
        -0x62t
        -0x5ft
        -0x68t
        -0x63t
        -0x6at
        0x4ft
        -0x64t
        -0x70t
        -0x65t
        -0x6bt
        -0x62t
        -0x5ft
        -0x64t
        -0x6ct
        -0x6dt
        0x4ft
        0x70t
        -0x7bt
        0x72t
        0x4ft
        -0x6et
        -0x62t
        -0x6dt
        -0x6ct
        -0x6et
        0x4ft
        -0x5et
        -0x5dt
        -0x5ft
        -0x68t
        -0x63t
        -0x6at
        0x69t
        0x4ft
        -0x55t
        -0x37t
        -0x30t
        -0x2ft
        -0x2ct
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x31t
        -0x3dt
        -0x32t
        -0x38t
        -0x2ft
        -0x2ct
        -0x31t
        -0x39t
        -0x3at
        -0x7et
        -0x5at
        -0x2ft
        -0x32t
        -0x3ct
        -0x25t
        -0x7et
        -0x48t
        -0x35t
        -0x2bt
        -0x35t
        -0x2ft
        -0x30t
        -0x7et
        -0x3bt
        -0x2ft
        -0x3at
        -0x39t
        -0x3bt
        -0x7et
        -0x2bt
        -0x2at
        -0x2ct
        -0x35t
        -0x30t
        -0x37t
        -0x64t
        -0x7et
        -0x7at
        -0x5ct
        -0x55t
        -0x54t
        -0x51t
        -0x5at
        -0x55t
        -0x5ct
        0x5dt
        -0x56t
        -0x62t
        -0x57t
        -0x5dt
        -0x54t
        -0x51t
        -0x56t
        -0x5et
        -0x5ft
        0x5dt
        -0x7bt
        -0x7et
        -0x6dt
        -0x80t
        0x5dt
        -0x60t
        -0x54t
        -0x5ft
        -0x5et
        -0x60t
        0x5dt
        -0x50t
        -0x4ft
        -0x51t
        -0x5at
        -0x55t
        -0x5ct
        0x77t
        0x5dt
        -0x47t
        -0x29t
        -0x22t
        -0x21t
        -0x1et
        -0x27t
        -0x22t
        -0x29t
        -0x70t
        -0x23t
        -0x2ft
        -0x24t
        -0x2at
        -0x21t
        -0x1et
        -0x23t
        -0x2bt
        -0x2ct
        -0x70t
        -0x43t
        -0x40t
        -0x5ct
        -0x4ft
        -0x70t
        -0x2dt
        -0x21t
        -0x2ct
        -0x2bt
        -0x2dt
        -0x70t
        -0x1dt
        -0x1ct
        -0x1et
        -0x27t
        -0x22t
        -0x29t
        -0x56t
        -0x70t
        0x5at
        0x78t
        0x7ft
        -0x80t
        -0x7dt
        0x7at
        0x7ft
        0x78t
        0x31t
        0x7et
        0x72t
        0x7dt
        0x77t
        -0x80t
        -0x7dt
        0x7et
        0x76t
        0x75t
        0x31t
        0x67t
        0x61t
        0x4at
        0x31t
        0x74t
        -0x80t
        0x75t
        0x76t
        0x74t
        0x31t
        -0x7ct
        -0x7bt
        -0x7dt
        0x7at
        0x7ft
        0x78t
        0x4bt
        0x31t
        -0x70t
        0x75t
        0x76t
        0x74t
        -0x35t
        -0x50t
        -0x4ft
        -0x4et
        -0x41t
        -0x5ct
        -0x58t
        -0x5dt
        -0x3ft
        -0x5at
        -0x56t
        -0x58t
        -0x7ct
        0x69t
        0x6dt
        0x6et
        -0x5ct
        -0x77t
        -0x70t
        -0x78t
        -0x40t
        -0x5bt
        -0x54t
        -0x59t
        0x6ct
        0x51t
        0x58t
        0x56t
        -0x42t
        -0x5bt
        -0x5et
        -0x3dt
        -0x56t
        -0x53t
        -0x21t
        -0x62t
        -0x78t
        -0x7et
        -0x2ct
        -0x42t
        -0x45t
        -0x60t
        -0x73t
        -0x7ct
        -0x77t
        0x76t
        0x70t
        0x5ct
        0x5ft
        0x42t
        0x53t
        0x74t
        0x72t
        0x7et
        0x73t
        0x74t
        -0x7ft
        -0x69t
        -0x51t
        -0x52t
        -0x4dt
        -0x55t
        -0x73t
        -0x47t
        -0x52t
        -0x51t
        -0x53t
        -0x6at
        -0x4dt
        -0x43t
        -0x42t
        0x6at
        -0x75t
        -0x66t
        -0x6dt
        0x6at
        -0x52t
        -0x4dt
        -0x52t
        -0x48t
        0x71t
        -0x42t
        0x6at
        -0x4at
        -0x4dt
        -0x43t
        -0x42t
        0x6at
        -0x43t
        -0x51t
        -0x53t
        -0x41t
        -0x44t
        -0x51t
        0x6at
        -0x52t
        -0x51t
        -0x53t
        -0x47t
        -0x52t
        -0x51t
        -0x44t
        0x6at
        -0x50t
        -0x47t
        -0x44t
        -0x7ct
        0x6at
        -0x56t
        -0x3et
        -0x3ft
        -0x3at
        -0x42t
        -0x60t
        -0x34t
        -0x3ft
        -0x3et
        -0x40t
        -0x4et
        -0x2ft
        -0x3at
        -0x37t
        -0x55t
        -0x57t
        -0x4ct
        -0x76t
        -0x5ft
        -0x2ct
        -0x2bt
        -0x36t
        -0x35t
        -0x31t
        -0x76t
        -0x63t
        -0x63t
        -0x61t
        -0x76t
        -0x60t
        -0x3ft
        -0x41t
        -0x35t
        -0x40t
        -0x3ft
        -0x32t
        -0x28t
        -0x2at
        -0x1ft
        -0x49t
        -0x2at
        -0x24t
        -0x49t
        -0x2ft
        -0x32t
        -0x21t
        -0x34t
        -0x33t
        -0x21t
        -0x49t
        -0x33t
        -0x12t
        -0x14t
        -0x8t
        -0x13t
        -0x12t
        -0x5t
        -0x30t
        -0x32t
        -0x27t
        -0x51t
        -0x32t
        -0x2bt
        -0x34t
        -0x51t
        -0x3et
        -0x2at
        -0x3bt
        -0x36t
        -0x30t
        -0x51t
        -0x3bt
        -0x3at
        -0x3ct
        -0x30t
        -0x3bt
        -0x3at
        -0x2dt
        -0x51t
        -0x3et
        -0x3et
        -0x3ct
        -0x44t
        -0x46t
        -0x3bt
        -0x65t
        -0x46t
        -0x3ft
        -0x48t
        -0x65t
        -0x52t
        -0x3et
        -0x4ft
        -0x4at
        -0x44t
        -0x65t
        -0x4ft
        -0x4et
        -0x50t
        -0x44t
        -0x4ft
        -0x4et
        -0x41t
        -0x65t
        -0x4ft
        -0x40t
        -0x43t
        -0x52t
        -0x50t
        -0x60t
        -0x78t
        -0x7at
        -0x6ft
        0x67t
        -0x7at
        -0x73t
        -0x7ct
        0x67t
        0x7at
        -0x72t
        0x7dt
        -0x7et
        -0x78t
        0x67t
        0x7dt
        0x7et
        0x7ct
        -0x78t
        0x7dt
        0x7et
        -0x75t
        0x67t
        -0x75t
        0x7at
        -0x70t
        -0x66t
        -0x68t
        -0x5dt
        0x79t
        -0x63t
        -0x61t
        -0x6at
        0x79t
        -0x3ft
        -0x4ct
        -0x51t
        -0x50t
        -0x46t
        0x79t
        -0x51t
        -0x50t
        -0x52t
        -0x46t
        -0x51t
        -0x50t
        -0x43t
        -0x7ft
        0x7ft
        -0x76t
        0x60t
        -0x7bt
        0x77t
        0x75t
        0x60t
        0x7ft
        -0x7et
        0x65t
        0x60t
        0x76t
        -0x69t
        -0x6bt
        -0x5ft
        -0x6at
        -0x69t
        -0x5ct
        -0x2et
        -0x30t
        -0x25t
        -0x4ft
        -0x2at
        -0x38t
        -0x3at
        -0x4ft
        -0x1ct
        -0x1ct
        -0x1at
        -0x4ft
        -0x19t
        -0x18t
        -0x1at
        -0x52t
        -0x54t
        -0x49t
        -0x73t
        -0x4et
        -0x5ct
        -0x5et
        -0x73t
        -0x34t
        -0x31t
        -0x6et
        -0x73t
        -0x3dt
        -0x3ct
        -0x3et
        -0x7et
        -0x80t
        -0x75t
        0x61t
        -0x7at
        0x78t
        0x76t
        0x61t
        -0x57t
        -0x5dt
        0x6bt
        0x61t
        -0x69t
        -0x68t
        -0x6at
        -0x77t
        -0x79t
        -0x6et
        0x68t
        -0x64t
        -0x54t
        -0x63t
        -0x59t
        0x68t
        -0x65t
        -0x51t
        -0x62t
        -0x5dt
        -0x57t
        0x68t
        -0x59t
        -0x56t
        0x6dt
        0x68t
        -0x62t
        -0x61t
        -0x63t
        -0x57t
        -0x62t
        -0x61t
        -0x54t
        -0x7ct
        -0x7et
        -0x73t
        0x63t
        -0x64t
        -0x5ct
        -0x5ct
        -0x64t
        -0x5ft
        -0x66t
        -0x56t
        -0x58t
        -0x4dt
        -0x77t
        -0x3et
        -0x36t
        -0x36t
        -0x3et
        -0x39t
        -0x40t
        -0x77t
        -0x33t
        -0x44t
        -0x2et
        -0x77t
        -0x41t
        -0x40t
        -0x42t
        -0x36t
        -0x41t
        -0x40t
        -0x33t
        -0x54t
        -0x56t
        -0x4bt
        -0x75t
        -0x37t
        -0x3ct
        -0x3et
        -0x75t
        -0x42t
        -0x40t
        -0x70t
        -0x75t
        -0x3ft
        -0x3et
        -0x40t
        -0x34t
        -0x3ft
        -0x3et
        -0x31t
        -0x48t
        -0x4at
        -0x3ft
        -0x69t
        -0x2bt
        -0x30t
        -0x32t
        -0x69t
        -0x36t
        -0x2bt
        -0x36t
        -0x34t
        -0x69t
        -0x33t
        -0x32t
        -0x34t
        -0x28t
        -0x33t
        -0x32t
        -0x25t
        -0x72t
        -0x74t
        -0x69t
        0x6dt
        -0x55t
        -0x5at
        -0x5ct
        0x6dt
        -0x5bt
        -0x55t
        -0x60t
        -0x5et
        0x6dt
        -0x5dt
        -0x5ct
        -0x5et
        -0x52t
        -0x5dt
        -0x5ct
        -0x4ft
        0x6ct
        0x6at
        0x75t
        0x4bt
        -0x72t
        -0x80t
        -0x74t
        -0x76t
        0x4bt
        0x7et
        -0x6et
        -0x7ft
        -0x7at
        -0x74t
        0x4bt
        -0x7ft
        -0x7et
        -0x80t
        -0x74t
        -0x7ft
        -0x7et
        -0x71t
        0x4bt
        0x7et
        0x7et
        -0x80t
        0x6bt
        0x69t
        0x74t
        0x4at
        -0x73t
        0x7ft
        -0x75t
        -0x77t
        0x4at
        0x7dt
        -0x6ft
        -0x80t
        -0x7bt
        -0x75t
        0x4at
        -0x80t
        -0x7ft
        0x7ft
        -0x75t
        -0x80t
        -0x7ft
        -0x72t
        0x4at
        -0x77t
        -0x74t
        0x4ft
        -0x4bt
        -0x4dt
        -0x42t
        -0x6ct
        -0x29t
        -0x37t
        -0x2bt
        -0x2dt
        -0x6ct
        -0x24t
        -0x31t
        -0x36t
        -0x35t
        -0x2bt
        -0x6ct
        -0x36t
        -0x35t
        -0x37t
        -0x2bt
        -0x36t
        -0x35t
        -0x28t
        -0x6ct
        -0x24t
        -0x2at
        -0x62t
        0x72t
        0x70t
        0x7bt
        0x51t
        -0x6ct
        -0x69t
        -0x74t
        0x51t
        -0x7ct
        -0x68t
        -0x79t
        -0x74t
        -0x6et
        0x51t
        -0x79t
        -0x78t
        -0x7at
        -0x6et
        -0x79t
        -0x78t
        -0x6bt
        0x51t
        -0x77t
        -0x71t
        -0x7ct
        -0x7at
        -0x69t
        -0x6bt
        -0x60t
        0x76t
        -0x46t
        -0x53t
        -0x57t
        -0x4ct
        -0x44t
        -0x53t
        -0x4dt
        0x76t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        0x76t
        -0x54t
        -0x53t
        -0x55t
        -0x49t
        -0x54t
        -0x53t
        -0x46t
        0x76t
        -0x44t
        -0x43t
        -0x4at
        -0x4at
        -0x53t
        -0x4ct
        -0x53t
        -0x54t
        -0x50t
        -0x69t
        -0x66t
        -0x76t
        0x74t
        0x77t
        0x7bt
        -0x72t
        -0x28t
        -0x38t
        -0x4et
        -0x4bt
        -0x46t
        -0x34t
        -0x2dt
        -0x3dt
        -0x2at
        -0x4dt
        -0x4ft
        -0x79t
        -0x7dt
        0x61t
        0x64t
        0x66t
        0x79t
        -0x70t
        -0x58t
        -0x5at
        -0x53t
        -0x53t
        -0x5at
        -0x55t
        -0x5ct
        0x5dt
        -0x60t
        -0x54t
        -0x5ft
        -0x5et
        -0x60t
        0x5dt
        -0x32t
        -0x19t
        -0x1ct
        -0x19t
        -0x18t
        -0x10t
        -0x19t
        -0x67t
        -0x46t
        -0x31t
        -0x56t
        -0x67t
        -0x25t
        -0x1et
        -0x13t
        -0x67t
        -0x23t
        -0x22t
        -0x17t
        -0x13t
        -0x1ft
        -0x4dt
        -0x67t
        -0x4et
        -0x35t
        -0x38t
        -0x35t
        -0x34t
        -0x2ct
        -0x35t
        0x7dt
        -0x62t
        -0x4dt
        -0x72t
        0x7dt
        -0x37t
        -0x3et
        -0x2dt
        -0x3et
        -0x37t
        -0x69t
        0x7dt
        -0x29t
        -0x10t
        -0x13t
        -0x10t
        -0xft
        -0x7t
        -0x10t
        -0x5et
        -0x3dt
        -0x28t
        -0x4dt
        -0x5et
        -0xet
        -0xct
        -0xft
        -0x18t
        -0x15t
        -0x12t
        -0x19t
        -0x44t
        -0x5et
        -0x7ct
        -0x63t
        -0x66t
        -0x63t
        -0x62t
        -0x5at
        -0x63t
        0x4ft
        0x70t
        -0x7bt
        0x72t
        0x4ft
        -0x65t
        -0x6ct
        -0x5bt
        -0x6ct
        -0x65t
        0x69t
        0x4ft
        -0x54t
        -0x3bt
        -0x3et
        -0x3bt
        -0x3at
        -0x32t
        -0x3bt
        0x77t
        -0x68t
        -0x53t
        -0x66t
        0x77t
        -0x39t
        -0x37t
        -0x3at
        -0x43t
        -0x40t
        -0x3dt
        -0x44t
        -0x6ft
        0x77t
        -0x6ft
        -0x56t
        -0x59t
        -0x56t
        -0x55t
        -0x4dt
        -0x56t
        0x5ct
        -0x80t
        -0x55t
        -0x58t
        -0x62t
        -0x4bt
        0x5ct
        -0x6et
        -0x5bt
        -0x51t
        -0x5bt
        -0x55t
        -0x56t
        0x5ct
        -0x58t
        -0x5ft
        -0x4et
        -0x5ft
        -0x58t
        0x5ct
        -0x51t
        -0x50t
        -0x52t
        -0x5bt
        -0x56t
        -0x5dt
        0x76t
        0x5ct
        0x64t
        0x7dt
        0x7at
        0x7dt
        0x7et
        -0x7at
        0x7dt
        0x2ft
        0x53t
        0x7et
        0x7bt
        0x71t
        -0x78t
        0x2ft
        0x65t
        0x78t
        -0x7et
        0x78t
        0x7et
        0x7dt
        0x2ft
        0x7ft
        -0x7ft
        0x7et
        0x75t
        0x78t
        0x7bt
        0x74t
        0x2ft
        -0x7et
        -0x7dt
        -0x7ft
        0x78t
        0x7dt
        0x76t
        0x49t
        0x2ft
        -0x4bt
        -0x32t
        -0x35t
        -0x32t
        -0x31t
        -0x29t
        -0x32t
        -0x80t
        -0x58t
        -0x5bt
        -0x4at
        -0x5dt
        -0x80t
        -0x34t
        -0x3bt
        -0x2at
        -0x3bt
        -0x34t
        -0x80t
        -0x2dt
        -0x2ct
        -0x2et
        -0x37t
        -0x32t
        -0x39t
        -0x66t
        -0x80t
        -0x34t
        -0x1bt
        -0x1et
        -0x1bt
        -0x1at
        -0x12t
        -0x1bt
        -0x69t
        -0x41t
        -0x44t
        -0x33t
        -0x46t
        -0x69t
        -0x19t
        -0x17t
        -0x1at
        -0x23t
        -0x20t
        -0x1dt
        -0x24t
        -0x69t
        -0x16t
        -0x15t
        -0x17t
        -0x20t
        -0x1bt
        -0x22t
        -0x4ft
        -0x69t
        -0x5dt
        -0x44t
        -0x47t
        -0x44t
        -0x43t
        -0x3bt
        -0x44t
        0x6et
        -0x5ct
        -0x62t
        -0x79t
        0x6et
        -0x46t
        -0x4dt
        -0x3ct
        -0x4dt
        -0x46t
        -0x78t
        0x6et
        -0x65t
        -0x4ct
        -0x4ft
        -0x4ct
        -0x4bt
        -0x43t
        -0x4ct
        0x66t
        -0x64t
        -0x6at
        0x7ft
        0x66t
        -0x4at
        -0x48t
        -0x4bt
        -0x54t
        -0x51t
        -0x4et
        -0x55t
        -0x80t
        0x66t
        0x70t
        -0x7ft
        0x79t
        -0x79t
        -0x7bt
        -0x7ft
        -0x2ct
        -0x5at
        -0x25t
        -0x27t
        -0x3ft
        -0x44t
        -0x5bt
        -0x27t
        -0x1ft
        -0x58t
        -0x5at
        -0x5ft
        -0x59t
        0x7dt
        0x76t
        -0x24t
        -0x13t
        -0x22t
        -0x57t
        0x7at
        -0x72t
        0x7dt
        -0x7et
        -0x78t
        0x48t
        0x7at
        0x7ct
        0x4ct
        -0x26t
        -0x12t
        -0x23t
        -0x1et
        -0x18t
        -0x58t
        -0x26t
        -0x1bt
        -0x26t
        -0x24t
        0x74t
        -0x78t
        0x77t
        0x7ct
        -0x7et
        0x42t
        0x78t
        0x74t
        0x76t
        0x46t
        -0x30t
        -0x1ct
        -0x2dt
        -0x28t
        -0x22t
        -0x62t
        -0x2ct
        -0x30t
        -0x2et
        -0x5et
        -0x64t
        -0x27t
        -0x22t
        -0x2et
        -0x60t
        -0x4ct
        -0x5dt
        -0x58t
        -0x52t
        0x6et
        -0x5bt
        -0x55t
        -0x60t
        -0x5et
        0x78t
        -0x74t
        0x7bt
        -0x80t
        -0x7at
        0x46t
        -0x7dt
        0x7et
        0x44t
        0x78t
        0x7at
        0x4at
        -0x7dt
        -0x69t
        -0x7at
        -0x75t
        -0x6ft
        0x51t
        -0x71t
        -0x6et
        0x56t
        -0x7dt
        0x4ft
        -0x72t
        -0x7dt
        -0x6at
        -0x71t
        -0x36t
        -0x22t
        -0x33t
        -0x2et
        -0x28t
        -0x68t
        -0x25t
        -0x36t
        -0x20t
        -0x2et
        -0x1at
        -0x2bt
        -0x26t
        -0x20t
        -0x60t
        -0x17t
        -0x62t
        -0x23t
        -0x28t
        -0x62t
        -0x2et
        -0x23t
        -0x2et
        -0x2ct
        -0x25t
        -0x11t
        -0x22t
        -0x1dt
        -0x17t
        -0x57t
        -0xet
        -0x59t
        -0x1at
        -0x1ft
        -0x59t
        -0x20t
        -0x1at
        -0x25t
        -0x23t
        -0x76t
        -0x61t
        0x59t
        0x5at
        0x7ft
        -0x6ct
        -0x7ft
        0x4ft
        0x7et
        -0x6dt
        -0x80t
        0x4ft
        -0x52t
        0x7dt
        0x79t
        -0x65t
        0x6at
        0x66t
        -0x67t
        -0x5at
        -0x64t
        -0x56t
        -0x59t
        -0x5ft
        -0x64t
        -0x3bt
        -0x6ct
        -0x70t
        -0x3dt
        -0x30t
        -0x3at
        -0x2ct
        -0x2ft
        -0x35t
        -0x3at
        -0x70t
        0x72t
        0x41t
        0x3dt
        0x76t
        0x7et
        0x7et
        0x76t
        0x7bt
        0x74t
        0x3dt
        0x78t
        0x46t
        -0x27t
        -0x1ft
        -0x13t
        -0x16t
        -0x11t
        -0x13t
        -0x13t
        -0x60t
        -0x63t
        -0x52t
        0x69t
        -0x15t
        -0x7t
        -0x1at
        -0x4ct
        -0x21t
        -0x25t
        -0x1ft
        -0x17t
        -0x26t
        -0x52t
        -0x5et
        -0x4dt
        -0x56t
        -0x51t
        -0x5at
        -0x53t
        -0x4bt
        -0x5at
        -0x5et
        -0x4bt
        -0x4bt
        -0x71t
        -0x6et
        0x56t
        -0x7dt
        -0x3at
        -0x3ct
        -0x31t
        -0x7bt
        -0x36t
        -0x38t
        -0x2dt
        -0x77t
        -0x3ft
        -0x3ft
        -0x38t
        -0x35t
        -0x40t
        -0x3et
        -0x77t
        -0x58t
        -0x5at
        -0x4ft
        0x67t
        -0x60t
        -0x58t
        -0x58t
        -0x60t
        -0x5bt
        -0x62t
        0x67t
        -0x42t
        -0x44t
        -0x39t
        0x7dt
        -0x40t
        -0x4et
        -0x42t
        -0x44t
        0x7dt
        -0x3bt
        -0x48t
        -0x4dt
        -0x4ct
        -0x42t
        0x7dt
        -0x4dt
        -0x4ct
        -0x4et
        -0x42t
        -0x4dt
        -0x4ct
        -0x3ft
        0x7dt
        -0x49t
        -0x4ct
        -0x3bt
        -0x4et
        -0x3et
        -0x3at
        -0x3bt
        -0x4dt
        -0x4ct
        -0x4et
        -0x64t
        -0x66t
        -0x5bt
        0x5bt
        -0x60t
        -0x6et
        -0x70t
        0x5bt
        -0xat
        -0x8t
        -0xbt
        -0x6t
        -0xbt
        -0x5t
        -0x74t
        0x7at
        -0x7at
        -0x74t
        -0x72t
        -0x79t
        -0x80t
        -0x6dt
        -0x7ft
        -0x72t
        -0x6ct
        -0x71t
        -0x6dt
        -0x8t
        -0x16t
        -0x18t
        -0x6t
        -0x9t
        -0x16t
        -0x4et
        -0xbt
        -0xft
        -0x1at
        -0x2t
        -0x19t
        -0x1at
        -0x18t
        -0x10t
        -0x77t
        0x7bt
        -0x78t
        -0x78t
        0x77t
        -0x7ct
        -0x7bt
        -0x45t
        0x77t
        -0x52t
        -0x51t
        -0x58t
        -0x58t
        -0x61t
        -0x5at
        -0x61t
        -0x62t
        0x67t
        -0x56t
        -0x5at
        -0x65t
        -0x4dt
        -0x64t
        -0x65t
        -0x63t
        -0x5bt
        -0x6at
        -0x77t
        -0x7ct
        -0x7bt
        -0x71t
        0x4ft
        -0x7ft
        -0x6at
        -0x7dt
        -0x63t
        -0x70t
        -0x75t
        -0x74t
        -0x6at
        0x56t
        -0x75t
        -0x6at
        -0x6dt
        -0x77t
        -0x60t
        0x54t
        -0x63t
        -0x70t
        -0x66t
        -0x70t
        -0x6at
        -0x6bt
        -0x4dt
        -0x5at
        -0x5ft
        -0x5et
        -0x54t
        0x6ct
        -0x5ft
        -0x4dt
        -0x64t
        -0x5bt
        -0x5et
        -0x4dt
        -0x60t
        -0x65t
        -0x72t
        -0x77t
        -0x76t
        -0x6ct
        0x54t
        -0x73t
        -0x76t
        -0x65t
        -0x78t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        0x77t
        -0x50t
        -0x53t
        -0x42t
        -0x55t
        -0x54t
        -0x42t
        -0x1ct
        -0x29t
        -0x26t
        -0x26t
        -0x2dt
        -0x6bt
        -0x78t
        -0x75t
        -0x75t
        -0x7ct
        -0x7et
        0x51t
        -0x40t
        -0x4dt
        -0x4at
        -0x4at
        -0x51t
        -0x46t
        -0x4at
        -0x41t
        -0x43t
        -0x4et
        -0x54t
        0x6ct
        0x75t
        -0x40t
        -0x55t
        -0x4ct
        -0x4et
        -0x46t
        -0x55t
        -0x2bt
        -0x40t
        -0x33t
        -0x36t
        -0x3ft
        -0x39t
        -0x31t
        -0x40t
        -0x34t
        -0x49t
        -0x3ct
        -0x3ft
        -0x42t
        -0x3at
        -0x49t
    .end array-data
.end method

.method public static A0T(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/AR;",
            ">;)V"
        }
    .end annotation

    .line 30405
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    const/16 v2, 0x5e2

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 30406
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_1

    sget-object v5, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30407
    const/16 v2, 0x442

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "javvHYyhFf0KGd1kb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_1

    .line 30409
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AR;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    const/16 v2, 0x2d5

    const/16 v1, 0x19

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30410
    const/16 v2, 0x367

    const/16 v1, 0x16

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x5e2

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x5e2

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 p0, 0x0

    invoke-static/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/AR;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/facebook/ads/redexgen/X/AR;

    move-result-object v0

    .line 30411
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30412
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/mm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mm;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0U(Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ax;)V

    .line 30413
    :cond_2
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 30414
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AR;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    .line 30415
    .local v0, "firstCodecName":Ljava/lang/String;
    const/16 v2, 0x325

    const/16 v1, 0xf

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30416
    const/16 v2, 0x303

    const/16 v1, 0x13

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30417
    const/16 v2, 0x343

    const/16 v1, 0x1a

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30418
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/ml;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ml;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0U(Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ax;)V

    .line 30419
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x20

    if-ge v1, v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 30420
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AR;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    .line 30421
    .restart local v0    # "firstCodecName":Ljava/lang/String;
    const/16 v2, 0x406

    const/16 v1, 0x1a

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30422
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AR;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30423
    .end local v0    # "firstCodecName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static A0U(Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/Ax<",
            "TT;>;)V"
        }
    .end annotation

    .line 30424
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "scoreProvider":Lcom/facebook/ads/redexgen/X/Ax;, "Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/As;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/As;-><init>(Lcom/facebook/ads/redexgen/X/Ax;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30425
    return-void
.end method

.method public static A0V(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 30426
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A0W(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0W(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 30427
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result p0

    return p0
.end method

.method public static A0X(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 30428
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0
.end method

.method public static A0Y(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 30429
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0
.end method

.method public static A0Z(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 30430
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 30431
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A0a(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 30432
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30433
    .local v0, "codecName":Ljava/lang/String;
    const/16 v2, 0x66c

    const/16 v1, 0xb

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30434
    const/16 v2, 0x622

    const/16 v1, 0xb

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30435
    const/16 v2, 0x62d

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 30436
    :goto_0
    return v0

    .line 30437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0a(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 30438
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result p0

    return p0
.end method

.method public static A0b(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 30439
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 30440
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A0X(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    return v0

    .line 30441
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ay;->A0c(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "KoKjuGysRdwz5u0"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v1, "VFpylWMq2S0rj93"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    xor-int/lit8 v0, p1, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0c(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 4

    .line 30442
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_1

    .line 30443
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A0Y(Landroid/media/MediaCodecInfo;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "d"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30444
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2h;->A0C(Ljava/lang/String;)Z

    move-result v0

    const/4 p1, 0x1

    if-eqz v0, :cond_2

    .line 30445
    return p1

    .line 30446
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30447
    .local v0, "codecName":Ljava/lang/String;
    const/16 v2, 0x58e

    const/4 v1, 0x4

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 30448
    return v0

    .line 30449
    :cond_3
    const/16 v2, 0x66c

    const/16 v1, 0xb

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30450
    const/16 v2, 0x661

    const/16 v1, 0xb

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30451
    const/16 v2, 0x698

    const/16 v1, 0x8

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x35

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30452
    :cond_4
    :goto_0
    const/16 v2, 0x677

    const/16 v1, 0x21

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30453
    const/16 v2, 0x622

    const/16 v1, 0xb

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30454
    const/16 v2, 0x62d

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30455
    const/16 v2, 0x65d

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v2, 0x615

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30456
    :cond_5
    :goto_1
    return p1

    .line 30457
    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "Tb2zdMoNeySIBbx0V3f9cAwRo38zez7f"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0
.end method

.method public static A0d(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    .line 30458
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    const/16 v2, 0x2e

    const/4 v1, 0x7

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30459
    :cond_0
    return v7

    .line 30460
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_3

    .line 30461
    const/16 v2, 0x8e

    const/16 v1, 0xd

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30462
    const/16 v2, 0xaa

    const/16 v1, 0xd

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30463
    const/16 v2, 0xb7

    const/16 v1, 0x10

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30464
    const/16 v2, 0x9b

    const/16 v1, 0xf

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30465
    const/16 v2, 0x5c

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 30466
    const/16 v2, 0x22a

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30467
    :cond_2
    return v7

    .line 30468
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_5

    .line 30469
    const/16 v2, 0x2a0

    const/16 v1, 0x19

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30470
    const/16 v2, 0x58b

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A05:Ljava/lang/String;

    .line 30471
    const/16 v2, 0x579

    const/4 v1, 0x6

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    const/16 v2, 0x10c

    const/4 v1, 0x2

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30472
    :cond_4
    return v7

    .line 30473
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_7

    .line 30474
    const/16 v2, 0x3d2

    const/16 v1, 0x1a

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30475
    const/16 v2, 0x639

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30476
    const/16 v2, 0x6a0

    const/4 v1, 0x6

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30477
    const/16 v2, 0x71a

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30478
    const/16 v2, 0x726

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30479
    const/16 v2, 0x71f

    const/4 v1, 0x7

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v6, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30480
    const/16 p0, 0x63d

    const/4 v5, 0x3

    const/16 v4, 0x7b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "F0Gn9cxfBSvii7fa0UF93GCV4uv6K8de"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DcyddPg9BiXD105tQwV5IePfZ0bLVn4M"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30481
    const/16 v2, 0x7a

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30482
    const/16 v2, 0x7f

    const/4 v1, 0x5

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30483
    const/16 v2, 0x84

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30484
    const/16 v2, 0x89

    const/4 v1, 0x5

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30485
    const/16 v2, 0x21a

    const/4 v1, 0x4

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30486
    const/16 v2, 0x455

    const/4 v1, 0x6

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30487
    :cond_6
    return v7

    .line 30488
    :cond_7
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-ne v0, v3, :cond_9

    .line 30489
    const/16 v2, 0x3b8

    const/16 v1, 0x1a

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30490
    const/16 v2, 0x66

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_a

    .line 30491
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "nydJBFHRBD5hk7o2D4tykvKlgMFsP1SM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WWeXBCZuBCRG7EUvuKiPsTkRgK8ERGfC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v2, 0x6b

    const/4 v1, 0x5

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30492
    const/16 v2, 0x70

    const/4 v1, 0x5

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30493
    const/16 v2, 0x75

    const/4 v1, 0x5

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30494
    :cond_8
    return v7

    .line 30495
    :cond_9
    sget v5, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "GkRyYjTYByrmgDH0WlXKVdmPSNZ8lCgN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ni9nM4uSBMddlB6zBZSK6aFbzoXzwy3u"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v4, 0x18

    const/16 v2, 0x6a6

    const/4 v1, 0x7

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v3

    if-ge v5, v4, :cond_f

    .line 30496
    const/16 v2, 0x316

    const/16 v1, 0xf

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v2, 0x275

    const/16 v1, 0x16

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A05:Ljava/lang/String;

    .line 30497
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30498
    const/16 v2, 0x739

    const/16 v1, 0x8

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30499
    const/16 v2, 0x741

    const/4 v1, 0x7

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30500
    const/16 v2, 0x733

    const/4 v1, 0x6

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30501
    const/16 v2, 0x44a

    const/4 v1, 0x6

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30502
    const/16 v2, 0x64d

    const/16 v1, 0xc

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30503
    const/16 v2, 0x57

    const/4 v1, 0x5

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30504
    const/16 v6, 0x444

    const/4 v5, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    const/16 v0, 0x3a

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30505
    const/16 v2, 0x450

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30506
    :cond_d
    return v7

    :cond_e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "nYvmQZpdwFAwcv6gzbNkZZWF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "X6eS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3a

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    .line 30507
    :cond_f
    sget v6, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v2, 0x648

    const/4 v1, 0x5

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    if-gt v6, v5, :cond_12

    .line 30508
    const/16 v2, 0x334

    const/16 v1, 0xf

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A05:Ljava/lang/String;

    .line 30509
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30510
    const/16 v2, 0x637

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30511
    const/16 v2, 0x6c2

    const/4 v1, 0x7

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30512
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30513
    const/16 v2, 0x6ad

    const/4 v1, 0x6

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v3, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30514
    const/16 v2, 0x6c9

    const/4 v1, 0x2

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A02:[Ljava/lang/String;

    const-string v1, "JGSFe5hHB2u94PbOntGCWQqPSFCJeXlP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "TkGozbnrBqdw4Stmffdx8IiId823o3dX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_12

    .line 30515
    :cond_10
    return v7

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30516
    :cond_12
    sget v0, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    if-gt v0, v5, :cond_13

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Ljava/lang/String;

    .line 30517
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 30518
    const/16 v2, 0x3ec

    const/16 v1, 0x1a

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 30519
    return v7

    .line 30520
    :cond_13
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_14

    .line 30521
    const/16 v2, 0x5af

    const/16 v1, 0xe

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30522
    const/16 v2, 0x2b9

    const/16 v1, 0x1c

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30523
    return v7

    .line 30524
    :cond_14
    const/4 v0, 0x1

    return v0
.end method
