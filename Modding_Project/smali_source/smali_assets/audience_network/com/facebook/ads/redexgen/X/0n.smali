.class public final Lcom/facebook/ads/redexgen/X/0n;
.super Lcom/facebook/ads/redexgen/X/7k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ji;,
        Lcom/facebook/ads/redexgen/X/Jh;,
        Lcom/facebook/ads/redexgen/X/Jj;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Jh;

.field public static final A06:Lcom/facebook/ads/redexgen/X/Ji;

.field public static final A07:Ljava/util/regex/Pattern;

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;

.field public static final A0A:Ljava/util/regex/Pattern;

.field public static final A0B:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 18
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "p1JjjwHZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QiEjWLFXcVg7o"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nhuwGOrxAOZ3j55eqRpahgaz0GwfX6tj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6yXpXZapadp8VRb316vvjAm5hV4yaSxg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TGmXy7X22d03bAdpvyZyh6X1I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ARR0m23eYWSlS3UtdvlKiKeM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Lwdw5zAjTw10lXQrei1yTZcIsGO5NNLU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PxBJlerCHj8MDVjvQLeWSQf3c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0n;->A0C()V

    const/16 v2, 0x41b

    const/16 v1, 0x55

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A08:Ljava/util/regex/Pattern;

    .line 19
    const/16 v2, 0x3f6

    const/16 v1, 0x25

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0A:Ljava/util/regex/Pattern;

    .line 20
    const/16 v2, 0x3c5

    const/16 v1, 0x1d

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A09:Ljava/util/regex/Pattern;

    .line 21
    const/16 v2, 0x3e2

    const/16 v1, 0x14

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A04:Ljava/util/regex/Pattern;

    .line 22
    const/16 v2, 0x47d

    const/16 v1, 0x1d

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A03:Ljava/util/regex/Pattern;

    .line 23
    const/16 v2, 0x49a

    const/16 v1, 0x1f

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0B:Ljava/util/regex/Pattern;

    .line 24
    const/16 v2, 0x470

    const/16 v1, 0xd

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A07:Ljava/util/regex/Pattern;

    .line 25
    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Ji;-><init>(FII)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A06:Lcom/facebook/ads/redexgen/X/Ji;

    .line 26
    const/16 v2, 0x20

    const/16 v1, 0xf

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0n;->A05:Lcom/facebook/ads/redexgen/X/Jh;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 5248
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7k;-><init>(Ljava/lang/String;)V

    .line 5249
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0n;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0n;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 5251
    return-void
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5252
    :catch_0
    move-exception v3

    .line 5253
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x6

    const/16 v1, 0x2d

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;)F
    .locals 7

    .line 5254
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 5255
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_0

    .line 5256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2ab

    const/16 v1, 0x19

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    return v6

    .line 5258
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5259
    .local v1, "percentage":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 5260
    .local v4, "value":F
    const/high16 v0, -0x3d380000    # -100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5261
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5262
    .end local v4    # "value":F
    .local v2, "value":F
    return v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5263
    .end local v1    # "percentage":Ljava/lang/String;
    .end local v2    # "value":F
    :catch_0
    move-exception v4

    .line 5264
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8f

    const/16 v1, 0x17

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5265
    return v6
.end method

.method public static A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ji;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5266
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A08:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 5267
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v6, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 5268
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5269
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0xe10

    mul-long/2addr v0, v3

    long-to-double v4, v0

    .line 5270
    .local p0, "durationSeconds":D
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5271
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x3c

    mul-long/2addr v2, v0

    long-to-double v0, v2

    add-double/2addr v4, v0

    .line 5272
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5273
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v0, v2

    add-double/2addr v4, v0

    .line 5274
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5275
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    add-double/2addr v4, v0

    .line 5276
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v6, v0

    const/4 v0, 0x5

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 5277
    .local v6, "frames":Ljava/lang/String;
    sget-object v6, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "mLEwrm7vKLrlfB6LVj0FJa0TtKMuAs5P"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "qTZwtworCWndH0Ay7tgKRNpRsf0PfjPC"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    if-eqz v8, :cond_1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v1, v8

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ji;->A00:F

    div-float/2addr v1, v0

    float-to-double v0, v1

    :goto_1
    add-double/2addr v4, v0

    .line 5278
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5279
    .local p4, "subframes":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5280
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ji;->A01:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ji;->A00:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    .line 5281
    :cond_0
    add-double/2addr v4, v2

    .line 5282
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0

    .line 5283
    :cond_1
    move-wide v0, v2

    goto :goto_1

    .line 5284
    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5285
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local p0    # "durationSeconds":D
    .end local p4
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0A:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5286
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5287
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5288
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 5289
    .local v4, "offsetSeconds":D
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5290
    .local p1, "unit":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_5
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 5291
    :goto_3
    :pswitch_0
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0

    .line 5292
    :pswitch_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ji;->A02:I

    int-to-double v0, v0

    div-double/2addr v4, v0

    goto :goto_3

    .line 5293
    :pswitch_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ji;->A00:F

    float-to-double v0, v0

    div-double/2addr v4, v0

    .line 5294
    goto :goto_3

    .line 5295
    :pswitch_3
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v0

    .line 5296
    goto :goto_3

    .line 5297
    :pswitch_4
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v0

    .line 5298
    goto :goto_3

    .line 5299
    :pswitch_5
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v0

    .line 5300
    goto :goto_3

    .line 5301
    :sswitch_0
    const/16 v2, 0x619

    const/4 v1, 0x2

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const/16 v2, 0x68f

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :sswitch_2
    const/16 v2, 0x668

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_3
    const/16 v2, 0x610

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_4
    const/16 v2, 0x5bb

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_5
    const/16 v2, 0x551

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x4

    goto/16 :goto_2

    .line 5302
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local p1    # "unit":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c4

    const/16 v1, 0x1b

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 3

    .line 5303
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5304
    const/4 v0, 0x0

    return-object v0

    .line 5305
    :sswitch_0
    const/16 v2, 0x672

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x653

    const/4 v1, 0x5

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x601

    const/4 v1, 0x4

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x548

    const/4 v1, 0x3

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x513

    const/4 v1, 0x6

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 5306
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 5307
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "QuoyGMZU77HTmr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object p0

    .line 5308
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jh;)Lcom/facebook/ads/redexgen/X/Jh;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5309
    const/16 v2, 0x5c0

    const/16 v1, 0x23

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x505

    const/16 v1, 0xe

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5310
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 5311
    return-object p1

    .line 5312
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 5313
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const/16 v2, 0xa6

    const/16 v1, 0x24

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v4

    if-nez v7, :cond_1

    .line 5314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5315
    return-object p1

    .line 5316
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 5317
    .local v2, "columns":I
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5318
    .local v5, "rows":I
    if-eqz p0, :cond_2

    if-eqz v7, :cond_2

    .line 5319
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jh;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Jh;-><init>(II)V

    return-object v0

    .line 5320
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22d

    const/16 v1, 0x18

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Jh;
    .end local p2
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5321
    .end local v2    # "columns":I
    .end local v5    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/Jh;
    .restart local p2
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5322
    return-object p1
.end method

.method public static A04(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Ji;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5323
    const/16 v7, 0x1e

    .line 5324
    .local v0, "frameRate":I
    const/16 v2, 0x577

    const/16 v1, 0x9

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5c0

    const/16 v1, 0x23

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5325
    .local v1, "frameRateString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5326
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5327
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 5328
    .local v3, "frameRateMultiplier":F
    const/16 v2, 0x580

    const/16 v1, 0x13

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5329
    .local v4, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 5330
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5331
    .local v5, "parts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 5332
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v6, v0

    .line 5333
    .local v6, "numerator":F
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 5334
    .local v7, "denominator":F
    div-float/2addr v6, v0

    .line 5335
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A06:Lcom/facebook/ads/redexgen/X/Ji;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Ji;->A01:I

    .line 5336
    .local v5, "subFrameRate":I
    const/16 v2, 0x683

    const/16 v1, 0xc

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5337
    .local v6, "subFrameRateString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 5338
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5339
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A06:Lcom/facebook/ads/redexgen/X/Ji;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Ji;->A02:I

    .line 5340
    .local v7, "tickRate":I
    const/16 v2, 0x6d9

    const/16 v1, 0x8

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "ZUswaBax6tLaE1IC4JCUj1Icv8MP2XMH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "PhpwRqbX9uhXuGLmIXMh7Q7Ymyg4xhXC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {p0, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5341
    .local v2, "tickRateString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 5342
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5343
    :cond_3
    int-to-float v1, v7

    mul-float/2addr v1, v6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {v0, v1, v5, v4}, Lcom/facebook/ads/redexgen/X/Ji;-><init>(FII)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5344
    .end local v6    # "subFrameRateString":Ljava/lang/String;
    .end local v7    # "tickRate":I
    :cond_5
    const/16 v2, 0x593    # 2.0E-42f

    const/16 v1, 0x28

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A05(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Jj;
    .locals 7

    .line 5345
    const/16 v2, 0x54b

    const/4 v1, 0x6

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5346
    .local v0, "ttsExtent":Ljava/lang/String;
    const/4 p0, 0x0

    if-nez v5, :cond_0

    .line 5347
    return-object p0

    .line 5348
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5349
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1

    .line 5350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe9

    const/16 v1, 0x1f

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5351
    return-object p0

    .line 5352
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5353
    .local v3, "width":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5354
    .local v5, "height":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(II)V

    return-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5355
    .end local v3    # "width":I
    .end local v5    # "height":I
    .local v3, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xca

    const/16 v1, 0x1f

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    return-object p0
.end method

.method public static A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jk;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Jk;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/facebook/ads/redexgen/X/Jk;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ji;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Jk;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5357
    .local p5, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 5358
    .local v1, "duration":J
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 5359
    .local v3, "startTime":J
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 5360
    .local v5, "endTime":J
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v19

    .line 5361
    .local v7, "regionId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 5362
    .local v8, "imageId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 5363
    .local v9, "styleIds":[Ljava/lang/String;
    move-object/from16 v8, p0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .line 5364
    .local v13, "attributeCount":I
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/0n;->A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v17

    .line 5365
    .local v14, "style":Lcom/facebook/ads/redexgen/X/Jr;
    const/4 v7, 0x0

    .end local v1    # "duration":J
    .end local v7    # "regionId":Ljava/lang/String;
    .end local v8    # "imageId":Ljava/lang/String;
    .end local v9    # "styleIds":[Ljava/lang/String;
    .local v10, "i":I
    .local v15, "duration":J
    .local v17, "regionId":Ljava/lang/String;
    .local v18, "imageId":Ljava/lang/String;
    .local v19, "styleIds":[Ljava/lang/String;
    :goto_0
    if-ge v7, v9, :cond_3

    .line 5366
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 5367
    .local v1, "attr":Ljava/lang/String;
    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 5368
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, -0x1

    :goto_1
    move-object/from16 v0, p3

    packed-switch v1, :pswitch_data_0

    .line 5369
    .end local v1    # "attr":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5370
    :pswitch_0
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5371
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .end local v18    # "imageId":Ljava/lang/String;
    .local v7, "imageId":Ljava/lang/String;
    goto :goto_2

    .line 5372
    :pswitch_1
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5373
    move-object/from16 v19, v5

    .end local v17    # "regionId":Ljava/lang/String;
    .local v7, "regionId":Ljava/lang/String;
    goto :goto_2

    .line 5374
    .end local v7    # "regionId":Ljava/lang/String;
    .restart local v17    # "regionId":Ljava/lang/String;
    :pswitch_2
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/0n;->A0G(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5375
    .local v7, "ids":[Ljava/lang/String;
    array-length v0, v1

    if-lez v0, :cond_1

    .line 5376
    move-object/from16 v18, v1

    .end local v19    # "styleIds":[Ljava/lang/String;
    .local v8, "styleIds":[Ljava/lang/String;
    goto :goto_2

    .line 5377
    .end local v7    # "ids":[Ljava/lang/String;
    .end local v8    # "styleIds":[Ljava/lang/String;
    .restart local v19    # "styleIds":[Ljava/lang/String;
    :pswitch_3
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/0n;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ji;)J

    move-result-wide v11

    .line 5378
    .end local v15    # "duration":J
    .local v7, "duration":J
    goto :goto_2

    .line 5379
    .end local v7    # "duration":J
    .restart local v15    # "duration":J
    :pswitch_4
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/0n;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ji;)J

    move-result-wide v15

    .line 5380
    goto :goto_2

    .line 5381
    :pswitch_5
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/0n;->A01(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ji;)J

    move-result-wide v13

    .line 5382
    goto :goto_2

    .line 5383
    :sswitch_0
    const/16 v3, 0x4d0

    const/16 v2, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    sget-object v10, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "FcYwA1owpw"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    const/16 v0, 0x33

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const/16 v2, 0x4f6

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_3
    const/16 v2, 0x548

    const/4 v1, 0x3

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0x543

    const/4 v1, 0x3

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5384
    .end local v10    # "i":I
    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v2, p1

    if-eqz v2, :cond_5

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    cmp-long v3, v0, v6

    if-eqz v3, :cond_5

    .line 5385
    cmp-long v0, v13, v6

    if-eqz v0, :cond_4

    .line 5386
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v4, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x61

    if-eq v4, v3, :cond_8

    add-long/2addr v13, v0

    .line 5387
    :cond_4
    :goto_3
    cmp-long v0, v15, v6

    if-eqz v0, :cond_5

    .line 5388
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A02:J

    sget-object v5, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v5, v3

    const/4 v3, 0x5

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_9

    sget-object v5, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v4, "SZxfmWq4amNcL9TaQQOLLAMwfZNolhcd"

    const/4 v3, 0x3

    aput-object v4, v5, v3

    add-long/2addr v15, v0

    .line 5389
    .end local v3    # "startTime":J
    .local v20, "startTime":J
    :cond_5
    cmp-long v0, v15, v6

    if-nez v0, :cond_6

    .line 5390
    cmp-long v0, v11, v6

    if-eqz v0, :cond_7

    .line 5391
    add-long v15, v13, v11

    .line 5392
    .end local v5    # "endTime":J
    .local p1, "endTime":J
    :cond_6
    :goto_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 5393
    move-object/from16 p0, v2

    invoke-static/range {v12 .. v21}, Lcom/facebook/ads/redexgen/X/Jk;->A02(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Jr;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jk;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    return-object v0

    .line 5394
    :cond_7
    if-eqz v2, :cond_6

    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    cmp-long v3, v0, v6

    if-eqz v3, :cond_6

    .line 5395
    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/Jk;->A01:J

    goto :goto_4

    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v4, "4egwN988QRVxw0yAxczVmSNgNtgmaxGX"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    const-string v4, "SadwrkDoEbwTlMV1MTCuskhR2RkUu0E1"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    add-long/2addr v13, v0

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A07(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/Jl;
    .locals 23

    .line 5396
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5397
    .local v14, "regionId":Ljava/lang/String;
    const/4 v13, 0x0

    if-nez v16, :cond_0

    .line 5398
    return-object v13

    .line 5399
    :cond_0
    const/16 v2, 0x644

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5400
    .local v15, "regionOrigin":Ljava/lang/String;
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_d

    .line 5401
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5402
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 5403
    .local v6, "originPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/16 v4, 0x12f

    const/16 v2, 0x27

    const/16 v0, 0x1d

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v11

    const/16 v4, 0x156

    const/16 v2, 0x29

    const/16 v0, 0x37

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v12

    const/high16 v15, 0x42c80000    # 100.0f

    const/4 v4, 0x2

    const/4 v10, 0x1

    move-object/from16 v9, p2

    if-eqz v8, :cond_1

    .line 5404
    :try_start_0
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v15

    .line 5405
    .local v0, "position":F
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5406
    .end local v0    # "position":F
    .end local v7
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5407
    return-object v13

    .line 5408
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "JOMz8RfhZxjyjCW014gv2m0MH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "qk3Phvnbbo37fKBWKDjhM47dE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v8, :cond_c

    .line 5409
    if-nez v9, :cond_3

    .line 5410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5411
    return-object v13

    .line 5412
    :cond_3
    :try_start_1
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5413
    .local v0, "width":I
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5414
    .local v12, "height":I
    int-to-float v8, v2

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Jj;->A01:I

    int-to-float v0, v0

    div-float/2addr v8, v0

    .line 5415
    .local v3, "position":F
    int-to-float v7, v1

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 5416
    .end local v0    # "width":I
    .end local v12    # "height":I
    .restart local v7
    goto :goto_1

    .line 5417
    :goto_0
    div-float/2addr v7, v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5418
    .local v7, "line":F
    .end local v3    # "position":F
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .local v17, "position":F
    :goto_1
    const/16 v2, 0x54b

    const/4 v1, 0x6

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5419
    .local v13, "regionExtent":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 5420
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 5421
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A0B:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 5422
    .local v5, "extentPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    const/16 v11, 0x108

    const/16 v1, 0x27

    const/16 v0, 0x47

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v11

    if-eqz v14, :cond_4

    .line 5423
    :try_start_2
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v15

    .line 5424
    .local v0, "width":F
    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5425
    .end local v0    # "width":F
    .end local v4
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5426
    const/4 v0, 0x0

    return-object v0

    .line 5427
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5428
    if-nez v9, :cond_5

    .line 5429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5430
    const/4 v0, 0x0

    return-object v0

    .line 5431
    :cond_5
    :try_start_3
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5432
    .local v0, "extentWidth":I
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5433
    .local v8, "extentHeight":I
    int-to-float v1, v1

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Jj;->A01:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 5434
    .local v9, "width":F
    int-to-float v2, v2

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Jj;->A00:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 5435
    .end local v0    # "extentWidth":I
    .end local v8    # "extentHeight":I
    .restart local v4
    goto :goto_3

    .line 5436
    :goto_2
    div-float/2addr v2, v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5437
    .local v4, "height":F
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "height":F
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "width":F
    .local v0, "width":F
    .local v16, "height":F
    :goto_3
    const/16 v20, 0x0

    .line 5438
    .local v3, "lineAnchor":I
    const/16 v5, 0x534

    const/16 v3, 0xc

    const/16 v0, 0x6f

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5439
    .local v18, "displayAlign":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 5440
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_6
    const/4 v0, -0x1

    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 5441
    .end local v3    # "lineAnchor":I
    .end local v7    # "line":F
    .local v19, "lineAnchor":I
    .local v20, "line":F
    :cond_7
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Jh;->A01:I

    int-to-float v0, v0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p1, p1, v0

    .line 5442
    .local v21, "regionTextHeight":F
    const/high16 p2, -0x80000000

    .line 5443
    .local v3, "verticalType":I
    const/16 v5, 0x6ec

    const/16 v3, 0xb

    const/16 v0, 0x10

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5444
    .local v22, "writingDirection":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 5445
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_8
    const/4 v4, -0x1

    :goto_6
    packed-switch v4, :pswitch_data_1

    .line 5446
    .end local v3    # "verticalType":I
    .local p0, "verticalType":I
    :cond_9
    :goto_7
    new-instance v15, Lcom/facebook/ads/redexgen/X/Jl;

    const/16 v19, 0x0

    const/16 p0, 0x1

    .end local v13    # "regionExtent":Ljava/lang/String;
    .local p2, "regionExtent":Ljava/lang/String;
    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v17, v8

    move/from16 v18, v7

    invoke-direct/range {v15 .. v25}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v15

    .line 5447
    :pswitch_0
    const/16 p2, 0x1

    .line 5448
    goto :goto_7

    .line 5449
    :pswitch_1
    const/16 p2, 0x2

    .line 5450
    goto :goto_7

    .line 5451
    :sswitch_0
    const/16 v6, 0x696

    const/4 v3, 0x4

    const/16 v0, 0x18

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :sswitch_1
    const/16 v4, 0x692

    const/4 v3, 0x4

    const/16 v0, 0x50

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :sswitch_2
    const/16 v4, 0x690

    const/4 v3, 0x2

    const/16 v0, 0x36

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    .line 5452
    :pswitch_2
    const/16 v20, 0x2

    .line 5453
    add-float/2addr v7, v2

    .line 5454
    goto :goto_5

    .line 5455
    :pswitch_3
    const/16 v20, 0x1

    .line 5456
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v2, v0

    add-float/2addr v7, v0

    .line 5457
    goto :goto_5

    .line 5458
    :sswitch_3
    const/16 v5, 0x4b9

    const/4 v3, 0x5

    const/16 v0, 0x25

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_4

    :sswitch_4
    const/16 v5, 0x513

    const/4 v3, 0x6

    const/16 v0, 0x12

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_4

    .line 5459
    .end local v0    # "width":F
    .end local v16    # "height":F
    .end local v18    # "displayAlign":Ljava/lang/String;
    .end local v19    # "lineAnchor":I
    .end local v20    # "line":F
    .end local v21    # "regionTextHeight":F
    .end local v22    # "writingDirection":Ljava/lang/String;
    .end local p0    # "verticalType":I
    .end local p2    # "regionExtent":Ljava/lang/String;
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "line":F
    .restart local v13    # "regionExtent":Ljava/lang/String;
    .end local v13    # "regionExtent":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "regionExtent":Ljava/lang/String;
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5460
    const/4 v0, 0x0

    return-object v0

    .line 5461
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "regionExtent":Ljava/lang/String;
    .restart local v13    # "regionExtent":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17f

    const/16 v1, 0x29

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5462
    return-object v6

    .line 5463
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    :cond_b
    const/4 v4, 0x0

    const/16 v2, 0x1d1

    const/16 v1, 0x21

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5464
    return-object v4

    .line 5465
    .end local v7    # "line":F
    .end local v13    # "regionExtent":Ljava/lang/String;
    .end local v17    # "position":F
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5466
    const/4 v0, 0x0

    return-object v0

    .line 5467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1a8

    const/16 v1, 0x29

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5468
    return-object v13

    .line 5469
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :cond_d
    const/16 v2, 0x1f2

    const/16 v1, 0x21

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x58705dc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 0

    .line 5471
    if-nez p0, :cond_0

    new-instance p0, Lcom/facebook/ads/redexgen/X/Jr;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;
    .locals 15

    .line 5472
    move-object/from16 v3, p1

    move-object v12, p0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 5473
    .local v0, "attributeCount":I
    const/4 v10, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v10, v11, :cond_12

    .line 5474
    invoke-interface {v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 5475
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 p1, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 p0, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v13, -0x1

    :goto_1
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    packed-switch v13, :pswitch_data_0

    .line 5476
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5477
    :pswitch_0
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_3

    :sswitch_0
    const/16 v2, 0x4be

    const/4 v1, 0x3

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :sswitch_1
    const/16 v2, 0x635

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    goto/16 :goto_8

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "KuhwJ7ghsOXYSD0w45zfNovp0dFSdmRc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "7BZwCfoQFB9cKVUBMfAbcYdCpdo30x6t"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    :cond_3
    :goto_3
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    .line 5478
    :pswitch_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0U(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5479
    goto :goto_2

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "vXebmLnNF52WQsSE6i6dOepDl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VyoJ0PyeyBelBF2UzGSxOycy2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0U(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    goto :goto_2

    .line 5480
    :pswitch_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Jr;->A0U(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5481
    goto/16 :goto_2

    .line 5482
    :pswitch_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0n;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0F(F)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5483
    goto/16 :goto_2

    .line 5484
    :pswitch_4
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Jg;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0N(Lcom/facebook/ads/redexgen/X/Jg;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5485
    goto/16 :goto_2

    .line 5486
    :pswitch_5
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :cond_5
    const/4 v7, -0x1

    :goto_4
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_2

    :sswitch_2
    const/16 v2, 0x605

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :sswitch_3
    const/16 v9, 0x628

    const/16 v8, 0xd

    const/16 v7, 0x6d

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "e93UUhN2aqZLtboheHnNzqcVXHE9GMfx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v9, v8, v7}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_4
    const/16 v2, 0x6e3

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x2

    goto :goto_4

    :sswitch_5
    const/16 v2, 0x639

    const/16 v1, 0xb

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "bik63b6qq3sx6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "UnBPKnpUlJfync8N3sKzurGh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 5487
    :pswitch_6
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Jr;->A0V(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    goto/16 :goto_2

    .line 5488
    :pswitch_7
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0V(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5489
    goto/16 :goto_2

    .line 5490
    :pswitch_8
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Jr;->A0T(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5491
    goto/16 :goto_2

    .line 5492
    :pswitch_9
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0T(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5493
    goto/16 :goto_2

    .line 5494
    :pswitch_a
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    :cond_7
    :goto_5
    packed-switch p0, :pswitch_data_3

    goto/16 :goto_2

    :sswitch_6
    const/16 v2, 0x4b9

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x1

    goto :goto_5

    :sswitch_7
    const/16 v2, 0x4f0

    const/4 v1, 0x6

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    goto :goto_5

    .line 5495
    :pswitch_b
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Jr;->A0J(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5496
    goto/16 :goto_2

    .line 5497
    :pswitch_c
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0J(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5498
    goto/16 :goto_2

    .line 5499
    :pswitch_d
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4

    :cond_8
    const/16 p1, -0x1

    :goto_6
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_2

    :sswitch_8
    const/16 v2, 0x69a

    const/4 v1, 0x4

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x3

    goto :goto_6

    :sswitch_9
    const/16 v13, 0x4df

    const/4 v9, 0x4

    const/16 v2, 0x79

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_9

    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "LIbObqkBHnKY9czcuqJXmaycY"

    const/4 v0, 0x4

    aput-object v1, v14, v0

    const-string v1, "8yr68kE48uI7ct7K5MzK8s3n0"

    const/4 v0, 0x7

    aput-object v1, v14, v0

    invoke-static {v13, v9, v2}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    const/16 p1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v13, v9, v2}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :sswitch_a
    const/16 v2, 0x6b2

    const/16 v1, 0xd

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x4

    goto :goto_6

    :sswitch_b
    const/16 v2, 0x52b

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :sswitch_c
    const/16 v2, 0x51e

    const/16 v1, 0x9

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x0

    goto/16 :goto_6

    :sswitch_d
    const/16 v2, 0x4e3

    const/16 v1, 0xd

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x2

    goto/16 :goto_6

    .line 5500
    :pswitch_e
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "J4PxtYpjCjcISuW5D9hp9p1SdEi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v8}, Lcom/facebook/ads/redexgen/X/Jr;->A0K(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5501
    goto/16 :goto_2

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "5y5J9haLXfISwEnEFuDPzKTDZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OL7OkctduLhf4RZoSVrAZg0CW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v8}, Lcom/facebook/ads/redexgen/X/Jr;->A0K(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    goto/16 :goto_2

    .line 5502
    :pswitch_f
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Jr;->A0K(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5503
    goto/16 :goto_2

    .line 5504
    :pswitch_10
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Jr;->A0K(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5505
    goto/16 :goto_2

    .line 5506
    :pswitch_11
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0K(I)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5507
    goto/16 :goto_2

    .line 5508
    :pswitch_12
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0n;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0L(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5509
    goto/16 :goto_2

    .line 5510
    :pswitch_13
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v1

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/0n;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0M(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5511
    goto/16 :goto_2

    .line 5512
    :pswitch_14
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    const/16 v2, 0x5f5

    const/4 v1, 0x6

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "3LAgyyDE1fiF0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "1Nn0OmHZpjO5zuXdFxViYYhi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0S(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5513
    goto/16 :goto_2

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "rHlCayaIaBq6HOiiZnZ7WLhH9IM1pHxI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0S(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    goto/16 :goto_2

    .line 5514
    :pswitch_15
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    const/16 v2, 0x4ff

    const/4 v1, 0x4

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0R(Z)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5515
    goto/16 :goto_2

    .line 5516
    :pswitch_16
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Jr;->A0P(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5517
    goto/16 :goto_2

    .line 5518
    :pswitch_17
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5519
    :try_start_0
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3V;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0H(I)Lcom/facebook/ads/redexgen/X/Jr;

    goto/16 :goto_2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5520
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x54

    const/16 v2, 0x1c

    const/4 v0, 0x0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5521
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_2

    .line 5522
    :pswitch_18
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5523
    :try_start_1
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3V;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0G(I)Lcom/facebook/ads/redexgen/X/Jr;

    goto/16 :goto_2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5524
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x33

    const/16 v2, 0x21

    const/16 v0, 0x65

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5525
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_2

    .line 5526
    :pswitch_19
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5527
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Jr;->A0Q(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    goto/16 :goto_2

    .line 5528
    :pswitch_1a
    :try_start_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/0n;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    .line 5529
    invoke-static {v9, v3}, Lcom/facebook/ads/redexgen/X/0n;->A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;)V

    goto/16 :goto_2
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/kM; {:try_start_2 .. :try_end_2} :catch_2

    .line 5530
    .local v3, "e":Lcom/facebook/ads/redexgen/X/kM;
    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x70

    const/16 v2, 0x1f

    const/16 v0, 0x59

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 5531
    .end local v3    # "e":Lcom/facebook/ads/redexgen/X/kM;
    goto/16 :goto_2

    .line 5532
    :sswitch_e
    const/16 v2, 0x61b

    const/16 v1, 0xd

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0x8

    goto/16 :goto_1

    :sswitch_f
    const/16 v2, 0x4c1

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    goto/16 :goto_1

    :sswitch_10
    const/16 v2, 0x65c

    const/16 v1, 0xc

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0xb

    goto/16 :goto_1

    :sswitch_11
    const/16 v2, 0x6cd

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_d

    .line 5533
    :cond_c
    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5534
    :cond_d
    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "pLae2I6vaNRYXal5VxPfkycfu"

    const/4 v0, 0x4

    aput-object v1, v14, v0

    const-string v1, "8woMJWwEfTDb0STXPvcxVArhw"

    const/4 v0, 0x7

    aput-object v1, v14, v0

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5535
    const/16 v13, 0xd

    goto/16 :goto_1

    :sswitch_12
    const/16 v2, 0x55c

    const/16 v1, 0x8

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x4

    goto/16 :goto_1

    :sswitch_13
    const/16 v2, 0x6a7

    const/16 v1, 0xb

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0x9

    goto/16 :goto_1

    :sswitch_14
    const/16 v2, 0x669

    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v14, v0

    const/4 v0, 0x7

    aget-object v0, v14, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "GnfcohyZaQ6EawQBfHDTHpH0pVR69ODz"

    const/4 v0, 0x3

    aput-object v1, v14, v0

    const/4 v1, 0x5

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0xe

    goto/16 :goto_1

    :sswitch_15
    const/16 v2, 0x519

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "jWhc4LCLE9nWhLcrRob1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x2

    goto/16 :goto_1

    :sswitch_16
    const/16 v2, 0x658

    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v14, v0

    const/4 v0, 0x2

    aget-object v14, v14, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_9
    const/16 v13, 0xa

    goto/16 :goto_1

    :cond_10
    sget-object v14, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "r3WwEsdAzhczhwcQVK7AHARKaZJ6b8mu"

    const/4 v0, 0x6

    aput-object v1, v14, v0

    const-string v1, "SqtwuV9PjyH6OGgQkhkCGcnknbgAyTvh"

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v1, 0x4

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_9

    :sswitch_17
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x0

    goto/16 :goto_1

    :sswitch_18
    const/16 v2, 0x56d

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v14

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_11

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_a
    const/4 v13, 0x5

    goto/16 :goto_1

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "fe6MNLffa3xUvXQ94HR1CDOyy1WS5JE1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_a

    :sswitch_19
    const/16 v2, 0x6bf

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0xc

    goto/16 :goto_1

    :sswitch_1a
    const/16 v2, 0x69e

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x7

    goto/16 :goto_1

    :sswitch_1b
    const/16 v2, 0x552

    const/16 v1, 0xa

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x3

    goto/16 :goto_1

    :sswitch_1c
    const/16 v2, 0x564

    const/16 v1, 0x9

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x6

    goto/16 :goto_1

    .line 5536
    .end local v1    # "i":I
    :cond_12
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_1c
        -0x48ff636d -> :sswitch_1b
        -0x3f826a28 -> :sswitch_1a
        -0x3468fa43 -> :sswitch_19
        -0x2bc67c59 -> :sswitch_18
        0xd1b -> :sswitch_17
        0x3595da -> :sswitch_16
        0x5a72f63 -> :sswitch_15
        0x6855ce1 -> :sswitch_14
        0x6909352 -> :sswitch_13
        0x15caa0f0 -> :sswitch_12
        0x36e741c9 -> :sswitch_11
        0x42841923 -> :sswitch_10
        0x4cb7f6d5 -> :sswitch_f
        0x6899f5a4 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x179a1 -> :sswitch_0
        0x33af38 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_5
        -0x3d363934 -> :sswitch_4
        0x36723ff0 -> :sswitch_3
        0x641ec051 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x5305c081 -> :sswitch_7
        0x58705dc -> :sswitch_6
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x24de7f50 -> :sswitch_d
        -0x187eb37f -> :sswitch_c
        -0xeee99f9 -> :sswitch_b
        -0x81c562c -> :sswitch_a
        0x2e06d1 -> :sswitch_9
        0x36452d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "MzedSJZDJL3LD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "g6loelR4939QZaycQmxedlYL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x71

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Jj;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Jh;",
            "Lcom/facebook/ads/redexgen/X/Jj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5537
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p5, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p6, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5538
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/4g;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5539
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5540
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jr;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/0n;->A09(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v4

    .line 5541
    .local v1, "style":Lcom/facebook/ads/redexgen/X/Jr;
    if-eqz v1, :cond_3

    .line 5542
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/0n;->A0G(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "oxowjvWuzCcWkzEkDRByU8LkLZUydqr3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XAdwn62c6rSvSVMr71C9Wpdxl0LeAUIU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v1, v5, v0

    .line 5543
    .local v5, "id":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Jr;->A0O(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/Jr;

    .line 5544
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5545
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0X()Ljava/lang/String;

    move-result-object v0

    .line 5546
    .local v2, "styleId":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 5547
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5548
    :cond_4
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5549
    invoke-static {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/0n;->A07(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v1

    .line 5550
    .local v0, "ttmlRegion":Lcom/facebook/ads/redexgen/X/Jl;
    if-eqz v1, :cond_5

    .line 5551
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Jl;->A09:Ljava/lang/String;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5552
    :cond_5
    :goto_1
    const/16 v2, 0x5bc

    const/4 v1, 0x4

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5553
    return-object p1

    .line 5554
    .end local v0    # "ttmlRegion":Lcom/facebook/ads/redexgen/X/Jl;
    :cond_6
    const/16 v2, 0x611

    const/16 v1, 0x8

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "B6Mw4qhmB6vQw7zev9YlYKUDY0kxCfVe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "G12wwLtLBhQxBioY68m1H9JFDs55K6Az"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 5555
    invoke-static {p0, p5}, Lcom/facebook/ads/redexgen/X/0n;->A0E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static A0C()V
    .locals 4

    const/16 v0, 0x6f7

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "YYEb81Zja86Dd7gFpf2yHyw2w0ZKb0ns"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/0n;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        -0x39t
        0x6t
        -0x1bt
        -0x14t
        -0x24t
        0xbt
        0x37t
        0x3dt
        0x34t
        0x2ct
        0x36t
        -0x11t
        0x3ct
        -0x18t
        0x2bt
        0x3at
        0x2dt
        0x29t
        0x3ct
        0x2dt
        -0x18t
        0x20t
        0x35t
        0x34t
        0x18t
        0x3dt
        0x34t
        0x34t
        0x18t
        0x29t
        0x3at
        0x3bt
        0x2dt
        0x3at
        0xet
        0x29t
        0x2bt
        0x3ct
        0x37t
        0x3at
        0x41t
        -0x18t
        0x31t
        0x36t
        0x3bt
        0x3ct
        0x29t
        0x36t
        0x2bt
        0x2dt
        0x1ct
        0x37t
        0x3ft
        0x42t
        0x3bt
        0x3at
        -0xat
        0x46t
        0x37t
        0x48t
        0x49t
        0x3ft
        0x44t
        0x3dt
        -0xat
        0x38t
        0x37t
        0x39t
        0x41t
        0x3dt
        0x48t
        0x45t
        0x4bt
        0x44t
        0x3at
        -0xat
        0x4ct
        0x37t
        0x42t
        0x4bt
        0x3bt
        0x10t
        -0xat
        -0x49t
        -0x2et
        -0x26t
        -0x23t
        -0x2at
        -0x2bt
        -0x6ft
        -0x1ft
        -0x2et
        -0x1dt
        -0x1ct
        -0x26t
        -0x21t
        -0x28t
        -0x6ft
        -0x2ct
        -0x20t
        -0x23t
        -0x20t
        -0x1dt
        -0x6ft
        -0x19t
        -0x2et
        -0x23t
        -0x1at
        -0x2at
        -0x55t
        -0x6ft
        0x10t
        0x2bt
        0x33t
        0x36t
        0x2ft
        0x2et
        -0x16t
        0x3at
        0x2bt
        0x3ct
        0x3dt
        0x33t
        0x38t
        0x31t
        -0x16t
        0x30t
        0x39t
        0x38t
        0x3et
        0x1dt
        0x33t
        0x44t
        0x2ft
        -0x16t
        0x40t
        0x2bt
        0x36t
        0x3ft
        0x2ft
        0x4t
        -0x16t
        0x0t
        0x1bt
        0x23t
        0x26t
        0x1ft
        0x1et
        -0x26t
        0x2et
        0x29t
        -0x26t
        0x2at
        0x1bt
        0x2ct
        0x2dt
        0x1ft
        -0x26t
        0x2dt
        0x22t
        0x1ft
        0x1bt
        0x2ct
        -0xct
        -0x26t
        0x0t
        0x1et
        0x25t
        0x26t
        0x29t
        0x20t
        0x25t
        0x1et
        -0x29t
        0x24t
        0x18t
        0x23t
        0x1dt
        0x26t
        0x29t
        0x24t
        0x1ct
        0x1bt
        -0x29t
        0x1at
        0x1ct
        0x23t
        0x23t
        -0x29t
        0x29t
        0x1ct
        0x2at
        0x26t
        0x23t
        0x2ct
        0x2bt
        0x20t
        0x26t
        0x25t
        -0xft
        -0x29t
        0x1dt
        0x3bt
        0x42t
        0x43t
        0x46t
        0x3dt
        0x42t
        0x3bt
        -0xct
        0x41t
        0x35t
        0x40t
        0x3at
        0x43t
        0x46t
        0x41t
        0x39t
        0x38t
        -0xct
        0x48t
        0x48t
        0x47t
        -0xct
        0x39t
        0x4ct
        0x48t
        0x39t
        0x42t
        0x48t
        0xet
        -0xct
        0x34t
        0x52t
        0x59t
        0x5at
        0x5dt
        0x54t
        0x59t
        0x52t
        0xbt
        0x59t
        0x5at
        0x59t
        0x18t
        0x5bt
        0x54t
        0x63t
        0x50t
        0x57t
        0xbt
        0x5ft
        0x5ft
        0x5et
        0xbt
        0x50t
        0x63t
        0x5ft
        0x50t
        0x59t
        0x5ft
        0x25t
        0xbt
        0x1t
        0x1ft
        0x26t
        0x27t
        0x2at
        0x21t
        0x26t
        0x1ft
        -0x28t
        0x2at
        0x1dt
        0x1ft
        0x21t
        0x27t
        0x26t
        -0x28t
        0x2ft
        0x21t
        0x2ct
        0x20t
        -0x28t
        0x25t
        0x19t
        0x24t
        0x1et
        0x27t
        0x2at
        0x25t
        0x1dt
        0x1ct
        -0x28t
        0x1dt
        0x30t
        0x2ct
        0x1dt
        0x26t
        0x2ct
        -0xet
        -0x28t
        -0x29t
        -0xbt
        -0x4t
        -0x3t
        0x0t
        -0x9t
        -0x4t
        -0xbt
        -0x52t
        0x0t
        -0xdt
        -0xbt
        -0x9t
        -0x3t
        -0x4t
        -0x52t
        0x5t
        -0x9t
        0x2t
        -0xat
        -0x52t
        -0x5t
        -0x11t
        -0x6t
        -0xct
        -0x3t
        0x0t
        -0x5t
        -0xdt
        -0xet
        -0x52t
        -0x3t
        0x0t
        -0x9t
        -0xbt
        -0x9t
        -0x4t
        -0x38t
        -0x52t
        -0xft
        0xft
        0x16t
        0x17t
        0x1at
        0x11t
        0x16t
        0xft
        -0x38t
        0x1at
        0xdt
        0xft
        0x11t
        0x17t
        0x16t
        -0x38t
        0x1ft
        0x11t
        0x1ct
        0x10t
        -0x38t
        0x15t
        0x11t
        0x1bt
        0x1bt
        0x11t
        0x16t
        0xft
        -0x38t
        0x1ct
        0x1ct
        0x1bt
        -0x1et
        0xdt
        0x20t
        0x1ct
        0xdt
        0x16t
        0x1ct
        -0x1et
        -0x38t
        0x28t
        0x46t
        0x4dt
        0x4et
        0x51t
        0x48t
        0x4dt
        0x46t
        -0x1t
        0x51t
        0x44t
        0x46t
        0x48t
        0x4et
        0x4dt
        -0x1t
        0x56t
        0x48t
        0x53t
        0x47t
        -0x1t
        0x54t
        0x4dt
        0x52t
        0x54t
        0x4ft
        0x4ft
        0x4et
        0x51t
        0x53t
        0x44t
        0x43t
        -0x1t
        0x44t
        0x57t
        0x53t
        0x44t
        0x4dt
        0x53t
        0x19t
        -0x1t
        -0x9t
        0x15t
        0x1ct
        0x1dt
        0x20t
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x20t
        0x13t
        0x15t
        0x17t
        0x1dt
        0x1ct
        -0x32t
        0x25t
        0x17t
        0x22t
        0x16t
        -0x32t
        0x23t
        0x1ct
        0x21t
        0x23t
        0x1et
        0x1et
        0x1dt
        0x20t
        0x22t
        0x13t
        0x12t
        -0x32t
        0x1dt
        0x20t
        0x17t
        0x15t
        0x17t
        0x1ct
        -0x18t
        -0x32t
        -0x14t
        0xat
        0x11t
        0x12t
        0x15t
        0xct
        0x11t
        0xat
        -0x3dt
        0x15t
        0x8t
        0xat
        0xct
        0x12t
        0x11t
        -0x3dt
        0x1at
        0xct
        0x17t
        0xbt
        0x12t
        0x18t
        0x17t
        -0x3dt
        0x4t
        0x11t
        -0x3dt
        0x8t
        0x1bt
        0x17t
        0x8t
        0x11t
        0x17t
        -0x39t
        -0x1bt
        -0x14t
        -0x13t
        -0x10t
        -0x19t
        -0x14t
        -0x1bt
        -0x62t
        -0x10t
        -0x1dt
        -0x1bt
        -0x19t
        -0x13t
        -0x14t
        -0x62t
        -0xbt
        -0x19t
        -0xet
        -0x1at
        -0x13t
        -0xdt
        -0xet
        -0x62t
        -0x21t
        -0x14t
        -0x62t
        -0x13t
        -0x10t
        -0x19t
        -0x1bt
        -0x19t
        -0x14t
        0x2ct
        0x4at
        0x51t
        0x52t
        0x55t
        0x4ct
        0x51t
        0x4at
        0x3t
        0x58t
        0x51t
        0x56t
        0x58t
        0x53t
        0x53t
        0x52t
        0x55t
        0x57t
        0x48t
        0x47t
        0x3t
        0x57t
        0x44t
        0x4at
        0x1dt
        0x3t
        0x38t
        0x5dt
        0x65t
        0x50t
        0x5bt
        0x58t
        0x53t
        0xft
        0x52t
        0x54t
        0x5bt
        0x5bt
        0xft
        0x61t
        0x54t
        0x62t
        0x5et
        0x5bt
        0x64t
        0x63t
        0x58t
        0x5et
        0x5dt
        0xft
        -0x2et
        -0x9t
        -0x1t
        -0x16t
        -0xbt
        -0xet
        -0x13t
        -0x57t
        -0x12t
        0x1t
        -0x7t
        -0x5t
        -0x12t
        -0x4t
        -0x4t
        -0xet
        -0x8t
        -0x9t
        -0x57t
        -0x11t
        -0x8t
        -0x5t
        -0x57t
        -0x11t
        -0x8t
        -0x9t
        -0x3t
        -0x24t
        -0xet
        0x3t
        -0x12t
        -0x3dt
        -0x57t
        -0x50t
        0x6t
        0x2bt
        0x33t
        0x1et
        0x29t
        0x26t
        0x21t
        -0x23t
        0x2bt
        0x32t
        0x2at
        0x1ft
        0x22t
        0x2ft
        -0x23t
        0x2ct
        0x23t
        -0x23t
        0x22t
        0x2bt
        0x31t
        0x2ft
        0x26t
        0x22t
        0x30t
        -0x23t
        0x23t
        0x2ct
        0x2ft
        -0x23t
        0x23t
        0x2ct
        0x2bt
        0x31t
        0x10t
        0x26t
        0x37t
        0x22t
        -0x9t
        -0x23t
        -0x10t
        0x15t
        0x1dt
        0x8t
        0x13t
        0x10t
        0xbt
        -0x39t
        0x1ct
        0x15t
        0x10t
        0x1bt
        -0x39t
        0xdt
        0x16t
        0x19t
        -0x39t
        0xdt
        0x16t
        0x15t
        0x1bt
        -0x6t
        0x10t
        0x21t
        0xct
        -0x1ft
        -0x39t
        -0x32t
        0x2t
        0x27t
        0x2ft
        0x1at
        0x25t
        0x22t
        0x1dt
        -0x27t
        0x2ft
        0x1at
        0x25t
        0x2et
        0x1et
        -0x27t
        0x1ft
        0x28t
        0x2bt
        -0x27t
        0x2ct
        0x21t
        0x1et
        0x1at
        0x2bt
        -0xdt
        -0x27t
        0x22t
        0x36t
        0x41t
        0x3bt
        0x44t
        0x47t
        0x42t
        0x3at
        0x39t
        -0xbt
        0x49t
        0x3et
        0x42t
        0x3at
        -0xbt
        0x3at
        0x4dt
        0x45t
        0x47t
        0x3at
        0x48t
        0x48t
        0x3et
        0x44t
        0x43t
        0xft
        -0xbt
        0x27t
        0x4ft
        0x46t
        0x4et
        0x43t
        0x4at
        0x46t
        0x3ft
        -0x6t
        0x50t
        0x3bt
        0x46t
        0x4ft
        0x3ft
        0x4dt
        -0x6t
        0x43t
        0x48t
        -0x6t
        0x40t
        0x49t
        0x48t
        0x4et
        0x2dt
        0x43t
        0x54t
        0x3ft
        -0x6t
        0x3bt
        0x4et
        0x4et
        0x4ct
        0x43t
        0x3ct
        0x4ft
        0x4et
        0x3ft
        0x8t
        -0x6t
        0x2at
        0x43t
        0x3dt
        0x45t
        0x43t
        0x48t
        0x41t
        -0x6t
        0x4et
        0x42t
        0x3ft
        -0x6t
        0x4dt
        0x3ft
        0x3dt
        0x49t
        0x48t
        0x3et
        -0x6t
        0x50t
        0x3bt
        0x46t
        0x4ft
        0x3ft
        -0x6t
        0x40t
        0x49t
        0x4ct
        -0x6t
        0x50t
        0x3ft
        0x4ct
        0x4et
        0x43t
        0x3dt
        0x3bt
        0x46t
        -0x6t
        0x40t
        0x49t
        0x48t
        0x4et
        -0x6t
        0x4dt
        0x43t
        0x54t
        0x3ft
        -0x6t
        0x3bt
        0x48t
        0x3et
        -0x6t
        0x43t
        0x41t
        0x48t
        0x49t
        0x4ct
        0x43t
        0x48t
        0x41t
        -0x6t
        0x4et
        0x42t
        0x3ft
        -0x6t
        0x40t
        0x43t
        0x4ct
        0x4dt
        0x4et
        0x8t
        -0x3at
        -0x19t
        -0x68t
        -0x34t
        -0x34t
        -0x3bt
        -0x3ct
        -0x68t
        -0x15t
        -0x13t
        -0x26t
        -0x14t
        -0x1ft
        -0x14t
        -0x1ct
        -0x23t
        -0x15t
        -0x68t
        -0x22t
        -0x19t
        -0x13t
        -0x1at
        -0x24t
        -0x1ft
        0x3t
        -0x2t
        -0x2t
        0x0t
        -0xdt
        0x1t
        0x1t
        -0x9t
        -0x4t
        -0xbt
        -0x52t
        -0x2t
        -0x11t
        0x0t
        0x1t
        -0xdt
        0x0t
        -0x52t
        -0xdt
        0x0t
        0x0t
        -0x3t
        0x0t
        -0x2bt
        -0xbt
        -0x12t
        -0x13t
        -0x3bt
        -0x1at
        -0x1ct
        -0x10t
        -0x1bt
        -0x1at
        -0xdt
        -0xat
        0xft
        0x2t
        0x3t
        0xdt
        0x6t
        -0x3ft
        0x15t
        0x10t
        -0x3ft
        0x5t
        0x6t
        0x4t
        0x10t
        0x5t
        0x6t
        -0x3ft
        0x14t
        0x10t
        0x16t
        0x13t
        0x4t
        0x6t
        -0x19t
        0x0t
        -0x9t
        0xat
        0x2t
        -0x9t
        -0xbt
        0x6t
        -0x9t
        -0xat
        -0x4et
        -0x9t
        0x4t
        0x4t
        0x1t
        0x4t
        -0x4et
        0x9t
        -0x6t
        -0x9t
        0x0t
        -0x4et
        0x4t
        -0x9t
        -0xdt
        -0xat
        -0x5t
        0x0t
        -0x7t
        -0x4et
        -0x5t
        0x0t
        0x2t
        0x7t
        0x6t
        -0x40t
        0x9t
        0x20t
        -0x28t
        -0x2at
        -0x60t
        -0x60t
        -0x2dt
        -0x58t
        -0x5bt
        -0x4ft
        -0x2bt
        -0x5et
        -0x5at
        -0x5ft
        -0x49t
        -0x2dt
        -0x58t
        -0x5bt
        -0x4ft
        -0x2bt
        -0x5dt
        -0x5ft
        -0x60t
        -0x18t
        -0x10t
        -0xct
        -0x23t
        -0x1bt
        -0xct
        -0x63t
        -0x5ft
        -0x64t
        -0x10t
        -0x46t
        -0x13t
        -0x41t
        -0x43t
        -0x11t
        -0x2ft
        -0x12t
        -0xat
        -0x43t
        -0x12t
        -0x40t
        -0x2ft
        -0x12t
        -0xat
        -0x44t
        -0x2ft
        -0x45t
        -0x49t
        -0x4at
        -0x2ft
        -0x65t
        -0x32t
        -0x5dt
        -0x60t
        -0x54t
        -0x30t
        -0x62t
        -0x65t
        -0x4et
        -0x53t
        -0x31t
        -0x5ft
        -0x32t
        -0x5dt
        -0x60t
        -0x54t
        -0x30t
        -0x62t
        -0x64t
        -0x4et
        -0x64t
        -0x65t
        -0x25t
        -0x11t
        -0x20t
        -0x11t
        -0x1at
        -0x11t
        -0x20t
        -0x1at
        -0x11t
        -0x27t
        -0x11t
        -0x19t
        -0x64t
        -0x69t
        0x11t
        -0x25t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x22t
        -0x24t
        -0x13t
        -0x25t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x24t
        -0x13t
        -0x25t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x24t
        -0x25t
        -0xet
        -0x13t
        -0x25t
        0xft
        -0x1ft
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x22t
        -0x24t
        0x2ft
        -0x13t
        -0x25t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x24t
        -0x25t
        -0xet
        -0x13t
        0xft
        -0x1ft
        -0x25t
        0xet
        -0x1dt
        -0x20t
        -0x14t
        0x10t
        -0x22t
        -0x24t
        -0x24t
        -0xet
        -0x24t
        -0xet
        -0x29t
        0x36t
        0x0t
        0x34t
        0x3ct
        0x3t
        0x1t
        -0x8t
        0x0t
        0x34t
        0x3ct
        0x3t
        0x1t
        -0x4t
        -0x31t
        -0x67t
        -0x33t
        -0x2bt
        -0x64t
        -0x33t
        -0x61t
        -0x50t
        -0x33t
        -0x2bt
        -0x65t
        -0x50t
        -0x66t
        -0x6at
        -0x6ft
        -0x67t
        -0x33t
        -0x2bt
        -0x64t
        -0x33t
        -0x61t
        -0x50t
        -0x33t
        -0x2bt
        -0x65t
        -0x50t
        -0x66t
        -0x6at
        -0x6bt
        0x12t
        -0x24t
        0x10t
        0x18t
        -0x21t
        0x10t
        -0x1et
        -0xdt
        0x10t
        0x18t
        -0x22t
        -0xdt
        -0x23t
        0x24t
        0x2ct
        -0x2ct
        -0x24t
        0x10t
        0x18t
        -0x21t
        0x10t
        -0x1et
        -0xdt
        0x10t
        0x18t
        -0x22t
        -0xdt
        -0x23t
        0x24t
        0x2ct
        -0x28t
        -0x9t
        -0x4t
        0xat
        -0x5t
        0x8t
        0x1ct
        0x27t
        0x27t
        0x3at
        0x39t
        0x3bt
        0x43t
        0x3ft
        0x4at
        0x47t
        0x4dt
        0x46t
        0x3ct
        0x1bt
        0x47t
        0x44t
        0x47t
        0x4at
        0x6t
        0x5t
        0x7t
        0xft
        0xbt
        0x16t
        0x13t
        0x19t
        0x12t
        0x8t
        -0x13t
        0x11t
        0x5t
        0xbt
        0x9t
        0x4ct
        0x4bt
        0x5dt
        0x4ft
        0xft
        0xet
        0x20t
        0x12t
        -0x10t
        0x1ct
        0x1bt
        0x21t
        0xet
        0x16t
        0x1bt
        0x12t
        0x1ft
        0x36t
        0x39t
        0x3at
        0x43t
        0x46t
        0x39t
        0xft
        0x12t
        0x14t
        0x16t
        0x1bt
        -0x2t
        0xbt
        0x0t
        0x15t
        0x19t
        0x26t
        0x23t
        0x1bt
        0x34t
        0x44t
        0x15t
        0x17t
        0x1et
        0x1et
        0x4t
        0x17t
        0x25t
        0x21t
        0x1et
        0x27t
        0x26t
        0x1bt
        0x21t
        0x20t
        -0x1at
        -0x18t
        -0xft
        -0x9t
        -0x18t
        -0xbt
        0x2dt
        0x39t
        0x36t
        0x39t
        0x3ct
        0x4ft
        0x5bt
        0x5at
        0x60t
        0x4dt
        0x55t
        0x5at
        0x51t
        0x5et
        -0x20t
        -0x23t
        -0x10t
        -0x23t
        -0x18t
        -0x17t
        -0x10t
        -0x13t
        -0xft
        -0x13t
        -0x8t
        -0x17t
        -0xat
        0x44t
        0x49t
        0x53t
        0x50t
        0x4ct
        0x41t
        0x59t
        0x21t
        0x4ct
        0x49t
        0x47t
        0x4et
        0x3dt
        0x42t
        0x4ft
        0xat
        0x1bt
        0x18t
        0x22t
        0x2at
        -0x19t
        -0x10t
        -0x1at
        0x3t
        0x16t
        0x12t
        0x3t
        0xct
        0x12t
        -0x21t
        -0x13t
        -0xat
        -0xbt
        -0x5t
        -0x33t
        -0x18t
        -0xct
        -0x10t
        -0xdt
        0x0t
        -0x1ct
        -0x13t
        -0x14t
        -0xet
        -0x2ft
        -0x19t
        -0x8t
        -0x1dt
        0x36t
        0x3ft
        0x3et
        0x44t
        0x23t
        0x44t
        0x49t
        0x3ct
        0x35t
        0x4t
        0xdt
        0xct
        0x12t
        -0xbt
        0x3t
        0x7t
        0x5t
        0x6t
        0x12t
        0x50t
        0x5ct
        0x4bt
        0x57t
        0x4ft
        0x3ct
        0x4bt
        0x5et
        0x4ft
        -0xft
        -0x3t
        -0x14t
        -0x8t
        -0x10t
        -0x23t
        -0x14t
        -0x1t
        -0x10t
        -0x28t
        0x0t
        -0x9t
        -0x1t
        -0xct
        -0x5t
        -0x9t
        -0xct
        -0x10t
        -0x3t
        -0x14t
        -0x8t
        -0x19t
        -0xdt
        -0x15t
        -0x28t
        -0x19t
        -0x6t
        -0x15t
        -0x2dt
        -0x5t
        -0xet
        -0x6t
        -0x11t
        -0xat
        -0xet
        -0x11t
        -0x15t
        -0x8t
        -0x5at
        -0x16t
        -0xbt
        -0x15t
        -0x7t
        -0xct
        -0x53t
        -0x6t
        -0x5at
        -0x12t
        -0x19t
        -0x4t
        -0x15t
        -0x5at
        -0x48t
        -0x5at
        -0xat
        -0x19t
        -0x8t
        -0x6t
        -0x7t
        0x1t
        0x39t
        0x36t
        0x32t
        0x35t
        0x35t
        0x41t
        0x41t
        0x3dt
        0x7t
        -0x4t
        -0x4t
        0x44t
        0x44t
        0x44t
        -0x5t
        0x44t
        0x0t
        -0x5t
        0x3ct
        0x3ft
        0x34t
        -0x4t
        0x3bt
        0x40t
        -0x4t
        0x41t
        0x41t
        0x3at
        0x39t
        -0x10t
        0x3dt
        0x2et
        0x3ft
        0x2et
        0x3at
        0x32t
        0x41t
        0x32t
        0x3ft
        0x34t
        0x2ft
        0x3t
        0x7t
        -0x5t
        0x1t
        -0x1t
        -0x23t
        -0x1et
        -0x26t
        -0x1dt
        -0x1at
        -0x1ft
        -0x2bt
        -0x18t
        -0x23t
        -0x1dt
        -0x1et
        0x0t
        0xbt
        -0x8t
        0x3t
        0x0t
        -0x6t
        0x32t
        0x27t
        0x3ft
        0x35t
        0x3bt
        0x3at
        0x57t
        0x50t
        0x51t
        0x5ft
        0x4t
        0x1t
        0x6t
        -0x3t
        0xct
        0x0t
        0xat
        0x7t
        0xdt
        -0x1t
        0x0t
        0x42t
        0x23t
        0x1bt
        0x2at
        0x17t
        0x1at
        0x17t
        0x2at
        0x17t
        0x5bt
        0x61t
        0x28t
        0x30t
        0x27t
        0x2ft
        0x24t
        0xdt
        0x2at
        0x32t
        -0x4t
        0x27t
        0x24t
        0x22t
        0x29t
        0x4ct
        0x4dt
        0x4at
        0x47t
        0x4ct
        0x43t
        0x52t
        0x46t
        0x50t
        0x4dt
        0x53t
        0x45t
        0x46t
        0x3ct
        0x3dt
        0x3ct
        0x33t
        0x19t
        0x1at
        0x20t
        0x19t
        0xft
        0x10t
        0x1dt
        0x17t
        0x14t
        0x19t
        0x10t
        0x21t
        0x24t
        0x1bt
        0x19t
        0x1bt
        0x20t
        -0x1ft
        0x50t
        0x58t
        0x4t
        -0x9t
        -0x7t
        -0x5t
        0x1t
        0x0t
        -0x3t
        -0xct
        -0xet
        -0xdt
        -0x1t
        0x58t
        0x5bt
        0x48t
        0x5ft
        0x4bt
        0x4et
        0x3bt
        0x52t
        0x29t
        0x48t
        0x4ct
        0x42t
        0x4dt
        0x42t
        0x48t
        0x47t
        0x10t
        0x25t
        0x1at
        0x17t
        0x13t
        0x24t
        0x22t
        0x1ft
        0x10t
        0x1dt
        0x20t
        0x21t
        0xet
        0x1ft
        0x21t
        0x41t
        0x42t
        0x47t
        0x3at
        0x33t
        0x47t
        0x48t
        0x4dt
        0x40t
        0x3dt
        0x42t
        0x3bt
        0x4at
        0x4ct
        0x39t
        0x1dt
        0x49t
        0x38t
        0x44t
        0x3ct
        0x29t
        0x38t
        0x4bt
        0x3ct
        0x37t
        0x1bt
        0x9t
        0x35t
        0x23t
        0x2dt
        0x33t
        -0x3t
        -0x15t
        -0x5t
        -0xbt
        0x2at
        0x1bt
        0x2et
        0x2at
        0x3ct
        0x2dt
        0x40t
        0x3ct
        0x9t
        0x34t
        0x31t
        0x2ft
        0x36t
        0x3ct
        0x2dt
        0x40t
        0x3ct
        0xbt
        0x37t
        0x35t
        0x2at
        0x31t
        0x36t
        0x2dt
        -0x6t
        -0x15t
        -0x2t
        -0x6t
        -0x37t
        -0xbt
        -0xct
        -0x6t
        -0x19t
        -0x11t
        -0xct
        -0x15t
        -0x8t
        0x43t
        0x34t
        0x47t
        0x43t
        0x13t
        0x34t
        0x32t
        0x3et
        0x41t
        0x30t
        0x43t
        0x38t
        0x3et
        0x3dt
        0x16t
        0x7t
        0x1at
        0x16t
        -0x19t
        0xft
        0x12t
        0xat
        0x3t
        0x15t
        0xbt
        0x15t
        0x50t
        0x45t
        0x3ft
        0x47t
        0x2et
        0x3dt
        0x50t
        0x41t
        0x1dt
        0x1dt
        0x2ft
        0x28t
        0x1et
        0x1ft
        0x2ct
        0x26t
        0x23t
        0x28t
        0x1ft
        -0x8t
        -0xdt
        -0x16t
        -0xbt
        -0x16t
        -0x11t
        -0x18t
        -0x32t
        -0x10t
        -0x1bt
        -0x1at
    .end array-data
.end method

.method public static A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jr;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5556
    const/16 v2, 0x3c2

    const/4 v1, 0x3

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5557
    .local v0, "expressions":[Ljava/lang/String;
    array-length v0, v6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 5558
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5559
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_2

    .line 5560
    const/4 p0, 0x3

    invoke-virtual {v6, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5561
    .local v6, "unit":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 5562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28f

    const/16 v1, 0x1c

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5563
    :sswitch_0
    const/16 v2, 0x64b

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x546

    const/4 v1, 0x2

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    .line 5564
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    array-length v0, v6

    if-ne v0, v5, :cond_3

    .line 5565
    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A09:Ljava/util/regex/Pattern;

    aget-object v0, v6, v4

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5566
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const/16 v2, 0x37c

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2df

    const/16 v1, 0x6e

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5567
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Jr;->A0I(I)Lcom/facebook/ads/redexgen/X/Jr;

    .line 5568
    goto :goto_2

    .line 5569
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Jr;->A0I(I)Lcom/facebook/ads/redexgen/X/Jr;

    .line 5570
    goto :goto_2

    .line 5571
    :pswitch_2
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Jr;->A0I(I)Lcom/facebook/ads/redexgen/X/Jr;

    .line 5572
    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A0E(F)Lcom/facebook/ads/redexgen/X/Jr;

    .line 5573
    .end local v6    # "unit":Ljava/lang/String;
    return-void

    .line 5574
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x245

    const/16 v1, 0x22

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5575
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x267

    const/16 v1, 0x28

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0E(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5576
    .local p0, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5577
    const/16 v2, 0x5e5

    const/4 v1, 0x5

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5578
    const/16 v2, 0x5e3

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5579
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5580
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 5581
    .local v1, "encodedBitmapData":Ljava/lang/String;
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5582
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "encodedBitmapData":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x611

    const/16 v1, 0x8

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5583
    return-void
.end method

.method public static A0F(Ljava/lang/String;)Z
    .locals 6

    .line 5584
    const/16 v2, 0x6e1

    const/4 v1, 0x2

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5585
    const/16 v2, 0x5bc

    const/4 v1, 0x4

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5586
    const/16 v2, 0x4fb

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5587
    const/16 v2, 0x540

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5588
    const/16 v3, 0x64a

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "5SOwrViEjml2jzAC0QTdKKqpMqKJiIIU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "utbwyOpqs8b3qaaxxsItXWquxXfcomKh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5589
    const/16 v2, 0x66e

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5590
    const/16 v2, 0x503

    const/4 v1, 0x2

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5591
    const/16 v2, 0x677

    const/4 v1, 0x5

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5592
    const/16 v2, 0x67c

    const/4 v1, 0x7

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5593
    const/16 v2, 0x5fb

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5594
    const/16 v2, 0x64d

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5595
    const/16 v5, 0x611

    const/16 v4, 0x8

    const/16 v3, 0x45

    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "XYEsrL24jboJLM6xnETRDfm0d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LekapK6bz2qvUkLFlJCVYN0VS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5596
    const/16 v2, 0x5e5

    const/4 v1, 0x5

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5597
    const/16 v2, 0x527

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5598
    const/16 v2, 0x5ea

    const/16 v1, 0xb

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 5599
    :goto_0
    return v0

    .line 5600
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0G(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 5601
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 5602
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x3c2

    const/4 v1, 0x3

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A0g([BIZ)Lcom/facebook/ads/redexgen/X/J7;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/kM;
        }
    .end annotation

    .line 5603
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/0n;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 5604
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 5605
    .local v9, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5606
    .local v10, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5607
    .local v11, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jl;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5608
    const/4 v1, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 5609
    .local v14, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5610
    const/4 v7, 0x0

    .line 5611
    .local v0, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/k6;
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 5612
    .local v15, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlNode;>;"
    const/4 v12, 0x0

    .line 5613
    .local v3, "unsupportedNodeDepth":I
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 5614
    .local v4, "eventType":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/0n;->A06:Lcom/facebook/ads/redexgen/X/Ji;

    .line 5615
    .local v5, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    sget-object v15, Lcom/facebook/ads/redexgen/X/0n;->A05:Lcom/facebook/ads/redexgen/X/Jh;

    .line 5616
    .local v6, "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    const/16 v16, 0x0

    .line 5617
    .end local v0    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/k6;
    .end local v3    # "unsupportedNodeDepth":I
    .end local v4    # "eventType":I
    .local v7, "ttsExtent":Lcom/facebook/ads/redexgen/X/Jj;
    .local v8, "eventType":I
    .local v16, "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/k6;
    .local v17, "unsupportedNodeDepth":I
    :goto_0
    const/4 v0, 0x1

    if-eq v8, v0, :cond_a

    .line 5618
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jk;

    .line 5619
    .local v4, "parent":Lcom/facebook/ads/redexgen/X/Jk;
    const/4 v9, 0x2

    if-nez v12, :cond_6

    .line 5620
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5621
    .local p0, "name":Ljava/lang/String;
    const/16 v11, 0x6e1

    const/4 v2, 0x2

    const/16 v0, 0x38

    invoke-static {v11, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v2

    if-ne v8, v9, :cond_3

    .line 5622
    .end local p0    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5623
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/0n;->A04(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Ji;

    move-result-object v3

    .line 5624
    sget-object v0, Lcom/facebook/ads/redexgen/X/0n;->A05:Lcom/facebook/ads/redexgen/X/Jh;

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/0n;->A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jh;)Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v15

    .line 5625
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/0n;->A05(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v16

    .line 5626
    .end local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .end local v6    # "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    .local v7, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .local v18, "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    .local p0, "ttsExtent":Lcom/facebook/ads/redexgen/X/Jj;
    :cond_0
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/0n;->A0F(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v8, 0x37c

    const/16 v2, 0xb

    const/16 v0, 0x10

    invoke-static {v8, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v8

    if-nez v9, :cond_1

    .line 5627
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x213

    const/16 v1, 0x1a

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 5628
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 5629
    :cond_1
    const/16 v9, 0x5bc

    const/4 v2, 0x4

    const/16 v0, 0x60

    invoke-static {v9, v2, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5630
    .end local v3    # "name":Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .end local v4    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .local v6, "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v6    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .local v1, "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v7    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .local v12, "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .end local v8    # "eventType":I
    .local v13, "eventType":I
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/0n;->A0B(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Jj;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5631
    .end local v3
    .end local v4
    .end local v7
    .end local v8
    .restart local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .restart local v12    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .restart local v13    # "eventType":I
    .restart local p1    # "name":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v13, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/0n;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Jk;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    .line 5632
    .local v0, "node":Lcom/facebook/ads/redexgen/X/Jk;
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 5633
    if-eqz v1, :cond_8

    .line 5634
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0F(Lcom/facebook/ads/redexgen/X/Jk;)V

    goto :goto_2
    :try_end_3
    .catch Lcom/facebook/ads/redexgen/X/kM; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5635
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 5636
    .local v0, "e":Lcom/facebook/ads/redexgen/X/kM;
    :try_start_4
    const/16 v2, 0x364

    const/16 v1, 0x18

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5637
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/kM;
    add-int/lit8 v12, v12, 0x1

    .line 5638
    goto :goto_2

    .line 5639
    .end local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v12    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .end local v13    # "eventType":I
    .end local v18    # "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    .end local p1    # "name":Ljava/lang/String;
    .restart local v4    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .restart local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .local v6, "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    .local v7, "ttsExtent":Lcom/facebook/ads/redexgen/X/Jj;
    .restart local v8    # "eventType":I
    .local p0, "name":Ljava/lang/String;
    .end local v4    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v8    # "eventType":I
    .end local p0    # "name":Ljava/lang/String;
    .restart local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .restart local v13    # "eventType":I
    .restart local p1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v8, v0, :cond_4

    goto :goto_1

    .line 5640
    :cond_4
    const/4 v0, 0x3

    if-ne v8, v0, :cond_8

    .line 5641
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5642
    new-instance v7, Lcom/facebook/ads/redexgen/X/k6;

    .line 5643
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jk;

    invoke-direct {v7, v0, v14, v6, v5}, Lcom/facebook/ads/redexgen/X/k6;-><init>(Lcom/facebook/ads/redexgen/X/Jk;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 5644
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5645
    .end local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v13    # "eventType":I
    .restart local v4    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .restart local v8    # "eventType":I
    :cond_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_9

    .end local v4    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .restart local v13    # "eventType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/0n;->A02:[Ljava/lang/String;

    const-string v1, "q6wSX38Wa3tvhMiP87hlFBAs7B3bq4ae"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v8, v9, :cond_7

    .line 5646
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 5647
    :cond_7
    const/4 v0, 0x3

    if-ne v8, v0, :cond_8

    .line 5648
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 5649
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Jk;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jk;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jk;->A0F(Lcom/facebook/ads/redexgen/X/Jk;)V

    .line 5650
    :cond_8
    :goto_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5651
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 5652
    .end local v1    # "parent":Lcom/facebook/ads/redexgen/X/Jk;
    .end local v13    # "eventType":I
    .restart local v8    # "eventType":I
    goto/16 :goto_0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5653
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5654
    .end local v8    # "eventType":I
    .restart local v13    # "eventType":I
    :cond_a
    if-eqz v7, :cond_b

    .line 5655
    return-object v7

    .line 5656
    :cond_b
    :try_start_6
    const/16 v2, 0x34d

    const/16 v1, 0x17

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;)V

    .end local p3    # null:Z
    .end local p4
    .end local p5
    throw v1
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5657
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "frameAndTickRate":Lcom/facebook/ads/redexgen/X/Ji;
    .end local v6    # "cellResolution":Lcom/facebook/ads/redexgen/X/Jh;
    .end local v7    # "ttsExtent":Lcom/facebook/ads/redexgen/X/Jj;
    .end local v9    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .end local v10    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .end local v11    # "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "eventType":I
    .end local v14    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v15    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlNode;>;"
    .end local v16    # "ttmlSubtitle":Lcom/facebook/ads/redexgen/X/k6;
    .end local v17    # "unsupportedNodeDepth":I
    .restart local p3    # null:Z
    .restart local p4
    .restart local p5
    :catch_1
    move-exception v3

    .line 5658
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x39e

    const/16 v1, 0x24

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5659
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 5660
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const/16 v2, 0x387

    const/16 v1, 0x17

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0n;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
