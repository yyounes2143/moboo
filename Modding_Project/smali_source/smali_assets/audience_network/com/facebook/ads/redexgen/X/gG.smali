.class public abstract Lcom/facebook/ads/redexgen/X/gG;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2773
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8Sd1qkECxTgChNdlguLEZkZWMegMfOE5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eE6tYG5sq9M8IjBBtVPbkf6Vz6TlptaI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QOK7QojphBw5FabNaFdniimN5leZGYDr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7RC2mif7S53CKwDAOZDI7R724V8msIlw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uAGCbL6a5SqKA6tsA4uR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AhKYWwBlorMFpY7WjQZRM9a3PetGdW8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8WuUCWPLRijzu2iy4u5OiIf4MXR0TAdJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jN3W5Bup4fcwVqh0edpT69G47IDoXIn2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gG;->A0L()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/gG;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 7

    .line 82081
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A01(Ljava/lang/String;I)I
    .locals 5

    .line 82082
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 82083
    .local v1, "formatLen":I
    const/4 v3, 0x0

    .line 82084
    .local v2, "foundDoublePercent":Z
    :goto_0
    if-ge p1, v4, :cond_2

    .line 82085
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82086
    .local v3, "ch":C
    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/gG;->A02(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, -0x64

    if-ne v1, v0, :cond_0

    .line 82087
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 82088
    add-int/lit8 p1, p1, 0x1

    .line 82089
    const/4 v3, 0x1

    .line 82090
    .end local v3    # "ch":C
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 82091
    goto :goto_0

    .line 82092
    :cond_1
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 82093
    :cond_2
    if-eqz v3, :cond_3

    const/16 v0, -0xc9

    :goto_1
    return v0

    :cond_3
    const/16 v0, -0xc8

    goto :goto_1
.end method

.method public static A02(Ljava/lang/String;I)I
    .locals 3

    .line 82094
    add-int/lit8 v1, p1, 0x1

    .line 82095
    .local v0, "nextIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 82096
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 82097
    .local v1, "nextChar":C
    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 p0, 0x25

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "DuYzmbbLi8NR0v6nZg86VBAdA9cmFFLr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, p0, :cond_2

    .line 82098
    :cond_0
    const/16 v0, -0x64

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82099
    .end local v1    # "nextChar":C
    :cond_2
    const/16 v0, -0x65

    return v0
.end method

.method public static A03(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82100
    packed-switch p1, :pswitch_data_0

    .line 82101
    invoke-static {p0, p6}, Lcom/facebook/ads/redexgen/X/gG;->A08(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 82102
    :pswitch_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/gG;->A07(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 82103
    :pswitch_1
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/gG;->A06(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 82104
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/gG;->A05(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 82105
    :pswitch_3
    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/gG;->A04(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 82106
    :pswitch_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/gG;->A00(Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82107
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82108
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    move-object v4, p2

    move-object v3, p1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82109
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v5, p3

    move-object v4, p2

    move-object v3, p1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82110
    const/4 v0, 0x0

    const/4 v2, 0x4

    move-object v6, p4

    move-object v5, p3

    move-object v4, p2

    move-object v3, p1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A08(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82111
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/gG;->A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static A09(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 5
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82112
    const/4 v4, 0x0

    .line 82113
    .local v0, "length":I
    if-nez p1, :cond_2

    .line 82114
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0G(III)Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 82115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v4, v0

    .line 82116
    :goto_0
    if-nez p0, :cond_0

    :goto_1
    return v4

    :cond_0
    const/4 v4, -0x3

    goto :goto_1

    .line 82117
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82118
    :cond_2
    instance-of v3, p1, Ljava/lang/Integer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "qj7fRfmIIB6kzsQFMAkTgCFneI3s8jGM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 82119
    if-nez p0, :cond_3

    .line 82120
    add-int/lit8 v4, v4, 0xb

    goto :goto_0

    .line 82121
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "O4ypdRTgmt7luw9ydfRW3B9AFY3tOHa9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82122
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 82123
    if-nez p0, :cond_6

    .line 82124
    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    .line 82125
    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82126
    :cond_7
    instance-of v3, p1, Ljava/lang/Byte;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "csKQFPsvsd8Y7y0GZsslTGMfIZRxrswf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "wF53Kmv7ZDAYUPjR0E2wAbKHzATsDJ47"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    .line 82127
    if-nez p0, :cond_8

    .line 82128
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_0

    .line 82129
    :cond_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 82130
    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 82131
    if-nez p0, :cond_a

    .line 82132
    add-int/lit8 v4, v4, 0x14

    goto/16 :goto_0

    .line 82133
    :cond_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 82134
    :cond_b
    if-nez p0, :cond_c

    .line 82135
    const/4 v0, -0x1

    return v0

    .line 82136
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A(Ljava/lang/StringBuilder;Ljava/lang/Object;)I
    .locals 3
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82137
    instance-of v0, p1, Ljava/util/Formattable;

    if-eqz v0, :cond_1

    .line 82138
    if-nez p0, :cond_0

    .line 82139
    const/4 v0, -0x1

    return v0

    .line 82140
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82141
    :cond_1
    const/4 v1, 0x0

    .line 82142
    .local v0, "str":Ljava/lang/String;
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 82143
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 82144
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 82145
    const/16 v2, 0x2f

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0G(III)Ljava/lang/String;

    move-result-object v1

    .line 82146
    :cond_3
    if-nez p0, :cond_5

    .line 82147
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 82148
    :cond_4
    if-eqz p1, :cond_2

    .line 82149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82150
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82151
    const/4 v0, -0x3

    return v0
.end method

.method public static A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I
    .locals 5
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 82153
    .local v0, "formatLen":I
    .local v1, "index":I
    const/4 v3, 0x0

    .line 82154
    .local v2, "remainingLen":I
    :goto_0
    if-ge p2, v4, :cond_5

    .line 82155
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 82156
    .local v3, "ch":C
    const/16 v1, 0x25

    if-ne v2, v1, :cond_0

    .line 82157
    add-int/lit8 v0, p2, 0x1

    if-le v4, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 82158
    add-int/lit8 p2, p2, 0x1

    .line 82159
    :cond_0
    if-nez p0, :cond_1

    .line 82160
    add-int/lit8 v3, v3, 0x1

    .line 82161
    .end local v3    # "ch":C
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 82162
    goto :goto_0

    .line 82163
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82164
    :cond_2
    if-eqz p4, :cond_4

    .line 82165
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "fVpeC838v4d09FxkUxUgJ6CBFHJaQPQZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82166
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82167
    :cond_5
    if-eqz p4, :cond_6

    add-int/2addr p3, v3

    :goto_2
    return p3

    :cond_6
    const/4 p3, -0x3

    goto :goto_2
.end method

.method public static A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 16
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82168
    const/4 v11, 0x0

    .line 82169
    .local v0, "segIdx":I
    const/4 v6, 0x0

    .line 82170
    .local v1, "length":I
    const/4 v5, 0x0

    move-object/from16 v7, p0

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 82171
    .local v11, "dryRun":Z
    :goto_0
    const/4 v3, -0x1

    move/from16 v8, p2

    if-nez v8, :cond_0

    const/4 v5, -0x1

    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_b

    .line 82172
    .local v13, "startAt":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "8ynbtcYvJcGQo99l12TWemlAPLQxISIP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    move v0, v5

    .end local v0    # "segIdx":I
    .end local v1    # "length":I
    .local v7, "argIdx":I
    .local v14, "segIdx":I
    .local v15, "length":I
    :goto_1
    move-object/from16 v2, p1

    if-ge v0, v8, :cond_7

    .line 82173
    move-object v9, v7

    move-object v10, v2

    .end local v7    # "argIdx":I
    .local p0, "argIdx":I
    move-object/from16 v15, p6

    move-object/from16 v14, p5

    move-object/from16 v13, p4

    move-object/from16 v12, p3

    move/from16 p0, v0

    invoke-static/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/gG;->A0D(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v1

    .line 82174
    .local v0, "appendLen":I
    if-ne v1, v3, :cond_1

    .line 82175
    return v3

    .line 82176
    :cond_1
    if-eqz v4, :cond_2

    .line 82177
    add-int/2addr v6, v1

    .line 82178
    :cond_2
    invoke-static {v2, v11}, Lcom/facebook/ads/redexgen/X/gG;->A01(Ljava/lang/String;I)I

    move-result v11

    .line 82179
    .end local p0    # "argIdx":I
    .local v2, "argIdx":I
    if-ne v0, v5, :cond_3

    const/16 v1, -0xc8

    if-ne v11, v1, :cond_4

    if-eqz v4, :cond_4

    .line 82180
    const/4 v0, -0x2

    return v0

    .line 82181
    :cond_3
    const/16 v1, -0xc8

    .line 82182
    :cond_4
    if-gez v11, :cond_5

    goto :goto_2

    .line 82183
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .end local v2    # "argIdx":I
    .restart local v7    # "argIdx":I
    goto :goto_1

    .line 82184
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 82185
    .end local v0    # "appendLen":I
    :cond_7
    const/16 v1, -0xc8

    .line 82186
    .end local v7    # "argIdx":I
    :goto_2
    if-eq v11, v1, :cond_8

    const/16 v0, -0xc9

    if-ne v11, v0, :cond_a

    .line 82187
    :cond_8
    if-eqz v4, :cond_9

    .line 82188
    return v6

    .line 82189
    :cond_9
    const/4 v0, -0x3

    return v0

    .line 82190
    :cond_a
    invoke-static {v7, v2, v11, v6, v4}, Lcom/facebook/ads/redexgen/X/gG;->A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82191
    const/4 v0, 0x1

    packed-switch p7, :pswitch_data_0

    .line 82192
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82193
    :pswitch_0
    invoke-static {p0, p1, p2, p6, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 82194
    :pswitch_1
    invoke-static {p0, p1, p2, p5, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "lLENtgmJN01kc6wViYFGzWwEkJhXf84x"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82195
    :pswitch_2
    invoke-static {p0, p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 82196
    :pswitch_3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 82197
    :pswitch_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I
    .locals 7
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82198
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 82199
    .local v1, "formatLen":I
    const/4 v6, 0x0

    .line 82200
    .local v2, "length":I
    :goto_0
    if-ge p2, v5, :cond_7

    .line 82201
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82202
    .local v3, "ch":C
    const/16 v4, 0x25

    if-ne v0, v4, :cond_9

    .line 82203
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/gG;->A02(Ljava/lang/String;I)I

    move-result v1

    .line 82204
    .local v5, "validatePercentResult":I
    const/16 v0, -0x64

    const/4 v3, -0x1

    if-ne v1, v0, :cond_c

    .line 82205
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 82206
    .local v6, "nextChar":C
    if-nez p4, :cond_0

    if-eq v2, v4, :cond_0

    .line 82207
    return v3

    .line 82208
    :cond_0
    const/4 v1, 0x1

    .line 82209
    .local p1, "segmentDone":Z
    const/16 v0, 0x73

    if-ne v2, v0, :cond_1

    .line 82210
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/gG;->A0A(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 82211
    .local v4, "appendResult":I
    .restart local v4    # "appendResult":I
    :goto_1
    if-ne v0, v3, :cond_5

    .line 82212
    return v3

    .line 82213
    .end local v4    # "appendResult":I
    :cond_1
    const/16 v0, 0x64

    if-ne v2, v0, :cond_2

    .line 82214
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/gG;->A09(Ljava/lang/StringBuilder;Ljava/lang/Object;)I

    move-result v0

    .restart local v4    # "appendResult":I
    goto :goto_1

    .line 82215
    .end local v4    # "appendResult":I
    :cond_2
    if-ne v2, v4, :cond_4

    .line 82216
    const/4 v1, 0x0

    .line 82217
    if-eqz p0, :cond_3

    .line 82218
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82219
    :cond_3
    const/4 v0, 0x1

    .line 82220
    .restart local v4    # "appendResult":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 82221
    .end local v4    # "appendResult":I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 82222
    :cond_5
    if-nez p0, :cond_6

    .line 82223
    add-int/2addr v6, v0

    .line 82224
    :cond_6
    if-eqz v1, :cond_a

    .line 82225
    :cond_7
    if-nez p0, :cond_8

    :goto_2
    return v6

    :cond_8
    const/4 v6, -0x3

    goto :goto_2

    .line 82226
    .end local v5    # "validatePercentResult":I
    :cond_9
    if-nez p0, :cond_b

    .line 82227
    add-int/lit8 v6, v6, 0x1

    .line 82228
    .end local v3    # "ch":C
    :cond_a
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 82229
    goto :goto_0

    .line 82230
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 82231
    .restart local v5    # "validatePercentResult":I
    :cond_c
    return v3
.end method

.method public static varargs A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 11
    .param p0    # Ljava/lang/StringBuilder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82232
    const/4 v7, 0x0

    .line 82233
    .local v0, "segIdx":I
    const/4 v6, 0x0

    .line 82234
    .local v1, "length":I
    const/4 v5, 0x0

    if-nez p0, :cond_7

    const/4 v4, 0x1

    .line 82235
    .local v3, "dryRun":Z
    :goto_0
    const/4 v10, 0x0

    .line 82236
    .local v4, "argsWasEmpty":Z
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 82237
    :cond_0
    sget-object p2, Lcom/facebook/ads/redexgen/X/gG;->A02:[Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_c

    .line 82238
    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "FyR6wqN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v10, 0x1

    .line 82239
    :cond_1
    const/4 v9, 0x0

    .line 82240
    .local v5, "formatted":Z
    array-length v8, p2

    :goto_1
    const/16 v3, -0xc9

    const/16 v2, -0xc8

    if-ge v5, v8, :cond_4

    aget-object v1, p2, v5

    .line 82241
    .local v9, "arg":Ljava/lang/Object;
    xor-int/lit8 v0, v10, 0x1

    invoke-static {p0, p1, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0E(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Z)I

    move-result v1

    .line 82242
    .local v10, "appendLen":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 82243
    return v0

    .line 82244
    :cond_2
    if-eqz v4, :cond_3

    .line 82245
    add-int/2addr v6, v1

    .line 82246
    :cond_3
    invoke-static {p1, v7}, Lcom/facebook/ads/redexgen/X/gG;->A01(Ljava/lang/String;I)I

    move-result v7

    .line 82247
    if-ne v7, v2, :cond_5

    .line 82248
    :cond_4
    :goto_2
    if-eqz v4, :cond_8

    if-nez v9, :cond_8

    .line 82249
    const/4 v0, -0x2

    return v0

    .line 82250
    :cond_5
    if-ne v7, v3, :cond_6

    .line 82251
    const/4 v9, 0x1

    .line 82252
    goto :goto_2

    .line 82253
    :cond_6
    const/4 v9, 0x1

    .line 82254
    .end local v9    # "arg":Ljava/lang/Object;
    .end local v10    # "appendLen":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82255
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 82256
    :cond_8
    if-eq v7, v2, :cond_9

    if-ne v7, v3, :cond_b

    .line 82257
    :cond_9
    if-eqz v4, :cond_a

    .line 82258
    return v6

    .line 82259
    :cond_a
    const/4 v0, -0x3

    return v0

    .line 82260
    :cond_b
    invoke-static {p0, p1, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/gG;->A0B(Ljava/lang/StringBuilder;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "skGE7NcFmlK9UGwd3HQe5P1GOhX2S0Sv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0H(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82261
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 82262
    invoke-static {p0, p6}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82263
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v4

    aput-object p5, v0, v3

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82264
    :pswitch_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    aput-object p4, v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/gG;->A01:[Ljava/lang/String;

    const-string v1, "XCWvLacnK9ECASwOW0Hv8sDP0GvXvxfm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82265
    :pswitch_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82266
    :pswitch_3
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82267
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0I(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82268
    move-object p6, p6

    move-object p5, p5

    move-object p4, p4

    move-object p3, p3

    move-object p2, p2

    move p1, p1

    move-object p0, p0

    invoke-static/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/gG;->A03(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 82269
    .local p5, "bufferSize":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 82270
    invoke-static/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/gG;->A0H(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82271
    :cond_0
    const/4 v0, -0x2

    if-ne v2, v0, :cond_1

    .line 82272
    return-object p0

    .line 82273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82274
    .local p6, "output":Ljava/lang/StringBuilder;
    if-ne p1, v1, :cond_2

    .line 82275
    invoke-static {v0, p0, p6}, Lcom/facebook/ads/redexgen/X/gG;->A0F(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82276
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82277
    :cond_2
    move-object v1, p0

    move v2, p1

    move-object p0, p2

    move-object p1, p3

    move-object p2, p4

    move-object p3, p5

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0C(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static A0J(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82278
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/gG;->A0I(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs A0K(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82279
    :try_start_0
    const/4 v2, 0x2

    const/16 v1, 0x2d

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0G(III)Ljava/lang/String;

    move-result-object v0

    .line 82280
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/gP;->A00(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 82281
    const/4 v0, 0x0

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82282
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 82283
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gG;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0L()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gG;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x75t
        0x71t
        -0x23t
        -0xet
        -0x7t
        -0x1t
        -0xat
        -0x12t
        -0x56t
        -0x8t
        -0x7t
        -0x2t
        -0x56t
        -0x14t
        -0x11t
        -0x56t
        -0x8t
        -0x1t
        -0xat
        -0xat
        -0x56t
        -0x1t
        -0x8t
        -0x12t
        -0x11t
        -0x4t
        -0x56t
        -0x8t
        -0x7t
        -0x4t
        -0x9t
        -0x15t
        -0xat
        -0x56t
        -0x13t
        -0xdt
        -0x4t
        -0x13t
        -0x1t
        -0x9t
        -0x3t
        -0x2t
        -0x15t
        -0x8t
        -0x13t
        -0x11t
        -0x3t
        -0x2bt
        -0x24t
        -0x2dt
        -0x2dt
    .end array-data
.end method
