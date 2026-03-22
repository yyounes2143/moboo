.class public abstract Lcom/facebook/ads/redexgen/X/KB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KA;,
        Lcom/facebook/ads/redexgen/X/K7;,
        Lcom/facebook/ads/redexgen/X/K6;,
        Lcom/facebook/ads/redexgen/X/K8;,
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$TextAlignment;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 894
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6VJGxYRVGzkOFylAWqo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TQDRStRjVTcp84EAqriMHD1W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y0YMWliml1c9R0RakThzWHnpZrTCSrBu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hjS3TiOTsIfHHkhXtOFrFHFAaycKEbQY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GvjOo5wC83Psjizly91M8Dr7lGNbFkes"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VFbjP0ZwmY6IK0pKGb7V8NSJj5u1SgyV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T0F9FjreghpLds1JHOV1Zh8xCqpA0ysb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F9ZBXP7xE9Rr53rKOaE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KB;->A0F()V

    const/16 v2, 0xbb

    const/16 v1, 0x1a

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A02:Ljava/util/regex/Pattern;

    .line 895
    const/4 v2, 0x3

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A05:Ljava/util/regex/Pattern;

    .line 896
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 897
    .local v0, "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v6, 0xff

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1b8

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const/4 v5, 0x0

    invoke-static {v5, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x15d

    const/4 v1, 0x4

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x12c

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x195

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x1bd

    const/4 v1, 0x6

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x17c

    const/4 v1, 0x7

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static {v5, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x121

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x11c

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A04:Ljava/util/Map;

    .line 906
    .end local v0    # "defaultColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 907
    .local v0, "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x10b

    const/16 v1, 0x8

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-static {v5, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xf4

    const/4 v1, 0x7

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    invoke-static {v5, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xed

    const/4 v1, 0x7

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-static {v6, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x105

    const/4 v1, 0x6

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-static {v6, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0x113

    const/16 v1, 0x9

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    invoke-static {v6, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xfb

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {v5, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xe6

    const/4 v1, 0x7

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xde

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A03:Ljava/util/Map;

    .line 916
    .end local v0    # "defaultBackgroundColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public static A00(III)I
    .locals 1

    .line 47798
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 47799
    return p0

    .line 47800
    :cond_0
    if-eq p1, v0, :cond_1

    .line 47801
    return p1

    .line 47802
    :cond_1
    if-eq p2, v0, :cond_2

    .line 47803
    return p2

    .line 47804
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)I
    .locals 8

    .line 47805
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47807
    const/high16 v0, -0x80000000

    return v0

    .line 47808
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v4, 0x183

    const/4 v3, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "zDr3pXiReOD9C2voGl4pNyTssnTsthj2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x6e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 47809
    :pswitch_0
    return v7

    .line 47810
    :pswitch_1
    return v6

    .line 47811
    :pswitch_2
    return v5

    .line 47812
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(Ljava/lang/String;)I
    .locals 6

    .line 47813
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47815
    const/high16 v0, -0x80000000

    return v0

    .line 47816
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x16e

    const/16 v1, 0xa

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x165

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 47817
    :pswitch_0
    return v5

    .line 47818
    :pswitch_1
    return v4

    .line 47819
    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(Ljava/lang/String;)I
    .locals 8

    .line 47820
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2c

    const/16 v1, 0x19

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47822
    return v4

    .line 47823
    :sswitch_0
    const/16 v2, 0x1a9

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x198

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x159

    const/4 v1, 0x4

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x130

    const/4 v1, 0x3

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x183

    const/4 v1, 0x6

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x126

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    .line 47824
    :pswitch_0
    return v7

    .line 47825
    :pswitch_1
    return v6

    .line 47826
    :pswitch_2
    return v4

    .line 47827
    :pswitch_3
    return v5

    .line 47828
    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A04(Ljava/lang/String;)I
    .locals 4

    .line 47829
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x1a

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47831
    const/high16 v0, -0x80000000

    return v0

    .line 47832
    :sswitch_0
    const/16 v2, 0x19d

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x178

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 47833
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 47834
    :pswitch_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xd86 -> :sswitch_1
        0xe3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A05(Ljava/lang/String;I)I
    .locals 2

    .line 47835
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 47836
    .local v0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K7;",
            ")I"
        }
    .end annotation

    .line 47837
    .local p3, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KB;->A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)Ljava/util/List;

    move-result-object p2

    .line 47838
    .local v0, "styleMatches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 p1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 p0, -0x1

    if-ge p1, v0, :cond_1

    .line 47839
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K8;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/K8;->A01:Lcom/facebook/ads/redexgen/X/Jz;

    .line 47840
    .local p0, "style":Lcom/facebook/ads/redexgen/X/Jz;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jz;->A07()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 47841
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jz;->A07()I

    move-result v0

    return v0

    .line 47842
    .end local p0    # "style":Lcom/facebook/ads/redexgen/X/Jz;
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 47843
    .end local v1    # "i":I
    :cond_1
    return p0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 47844
    .local p8, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 47845
    .local v3, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 47846
    .local v4, "startTagStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v4, 0x0

    .line 47847
    .local v5, "pos":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47848
    .local v6, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_15

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "AeTA9zfG0TGme9BEKFHCyzeTODloAdj0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v7, :cond_13

    .line 47849
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 47850
    .local v7, "curr":C
    sparse-switch v2, :sswitch_data_0

    .line 47851
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 47852
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47853
    :sswitch_0
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 47854
    add-int/lit8 v4, v4, 0x1

    .line 47855
    goto :goto_0

    .line 47856
    :cond_1
    move v2, v4

    .line 47857
    .local v8, "ltPos":I
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v10, 0x0

    const/16 v1, 0x2f

    const/4 v7, 0x1

    if-ne v0, v1, :cond_6

    const/4 v9, 0x1

    .line 47858
    .local v9, "isClosingTag":Z
    :goto_1
    add-int/lit8 v0, v2, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A05(Ljava/lang/String;I)I

    move-result v4

    .line 47859
    add-int/lit8 v0, v4, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 47860
    .local v10, "isVoidTag":Z
    :cond_2
    if-eqz v9, :cond_3

    const/4 v7, 0x2

    :cond_3
    add-int/2addr v7, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "RmddLkS1dXQ96i0rYlSMmYhsPXo1tsUj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bXvTM6kBQx9RsuQ7PFPuWtENxJrNvh3v"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v10, :cond_5

    :goto_2
    add-int/lit8 v0, v4, -0x2

    :goto_3
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 47861
    .local p0, "fullTagExpression":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_5

    goto :goto_2

    .line 47862
    :cond_5
    add-int/lit8 v0, v4, -0x1

    goto :goto_3

    .line 47863
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 47864
    :cond_7
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/KB;->A0D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47865
    .local p1, "tagName":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/KB;->A0O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 47866
    :cond_8
    if-eqz v9, :cond_d

    .line 47867
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_0

    .line 47868
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/K7;

    .line 47869
    .local p2, "startTag":Lcom/facebook/ads/redexgen/X/K7;
    invoke-static {p0, v8, v3, v6, p2}, Lcom/facebook/ads/redexgen/X/KB;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 47870
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 47871
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .end local v5    # "pos":I
    .local p5, "pos":I
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K6;

    invoke-direct {v0, v8, v2, v1}, Lcom/facebook/ads/redexgen/X/K6;-><init>(Lcom/facebook/ads/redexgen/X/K7;ILcom/facebook/ads/redexgen/X/K4;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47872
    :goto_4
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/K7;->A01:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    .line 47873
    .end local p5
    .restart local v5    # "pos":I
    :cond_b
    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_c

    .end local v5    # "pos":I
    .restart local p5
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "6LBQPk5FkDk3NWAQRRtmrnBQ3lB0BSgu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    .end local v5
    .restart local p5
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_4

    .line 47874
    .end local p2    # "startTag":Lcom/facebook/ads/redexgen/X/K7;
    .end local p5
    .restart local v5    # "pos":I
    .end local v5    # "pos":I
    .restart local p5
    :cond_d
    if-nez v10, :cond_0

    .line 47875
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "wdDtpexUk8e3MYkSHhs"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "WrocTxwzP1SCyFuF7cP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v8, v7}, Lcom/facebook/ads/redexgen/X/K7;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {v8, v7}, Lcom/facebook/ads/redexgen/X/K7;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 47876
    .end local p5
    .restart local v5    # "pos":I
    .restart local v7    # "curr":C
    :sswitch_1
    add-int/lit8 v1, v4, 0x1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 47877
    .local v8, "semiColonEndIndex":I
    add-int/lit8 v1, v4, 0x1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 47878
    .local v9, "spaceEndIndex":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_10

    .line 47879
    move v7, v1

    .line 47880
    .local p0, "entityEndIndex":I
    :goto_5
    if-eq v7, v0, :cond_12

    .line 47881
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/KB;->A0J(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 47882
    if-ne v7, v1, :cond_f

    .line 47883
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47884
    :cond_f
    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_0

    .line 47885
    :cond_10
    if-ne v1, v0, :cond_11

    goto :goto_5

    .line 47886
    :cond_11
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_5

    .line 47887
    :cond_12
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 47888
    add-int/lit8 v4, v4, 0x1

    .line 47889
    goto/16 :goto_0

    .line 47890
    :cond_13
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 47891
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K7;

    invoke-static {p0, v0, v3, v6, p2}, Lcom/facebook/ads/redexgen/X/KB;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_6

    .line 47892
    :cond_14
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K7;->A00()Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v1

    .line 47893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 47894
    invoke-static {p0, v1, v0, v6, p2}, Lcom/facebook/ads/redexgen/X/KB;->A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 47895
    invoke-static {v6}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method public static A08(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3C;
    .locals 1

    .line 47896
    new-instance v0, Lcom/facebook/ads/redexgen/X/KA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KA;-><init>()V

    .line 47897
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/KA;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V

    .line 47898
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KA;->A07()Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    return-object v0
.end method

.method public static A09(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/o2;
    .locals 1

    .line 47899
    new-instance v0, Lcom/facebook/ads/redexgen/X/KA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KA;-><init>()V

    .line 47900
    .local v0, "infoBuilder":Lcom/facebook/ads/redexgen/X/KA;
    iput-object p0, v0, Lcom/facebook/ads/redexgen/X/KA;->A0A:Ljava/lang/CharSequence;

    .line 47901
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KA;->A07()Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/4J;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/K3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/K3;"
        }
    .end annotation

    .line 47902
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v3

    .line 47903
    .local v0, "firstLine":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 47904
    return-object v2

    .line 47905
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 47906
    .local v2, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47907
    invoke-static {v2, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4J;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    return-object v0

    .line 47908
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v1

    .line 47909
    .local v3, "secondLine":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 47910
    return-object v2

    .line 47911
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 47912
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47913
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4J;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    return-object v0

    .line 47914
    :cond_3
    return-object v2
.end method

.method public static A0B(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/4J;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/K3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/K3;"
        }
    .end annotation

    .line 47915
    .local p0, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v3, Lcom/facebook/ads/redexgen/X/KA;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KA;-><init>()V

    .line 47916
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/KA;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/KA;->A09:J

    .line 47917
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/KA;->A08:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47918
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KB;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V

    .line 47919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47920
    .local v1, "textBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v6

    .line 47921
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "2AwiW2AhFaTR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v5, :cond_1

    .line 47922
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 47923
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47924
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47925
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0T()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 47926
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/KB;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/KA;->A0A:Ljava/lang/CharSequence;

    .line 47927
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KA;->A08()Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47928
    .end local v1    # "textBuilder":Ljava/lang/StringBuilder;
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x75

    const/16 v1, 0x1e

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 47929
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 47930
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 47931
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 47932
    const/16 v2, 0xb6

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K7;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K8;",
            ">;"
        }
    .end annotation

    .line 47933
    .local p0, "declaredStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47934
    .local v0, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 47935
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Jz;

    .line 47936
    .local v2, "style":Lcom/facebook/ads/redexgen/X/Jz;
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/K7;->A01:Ljava/lang/String;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/K7;->A03:Ljava/util/Set;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/K7;->A02:Ljava/lang/String;

    invoke-virtual {v4, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 47937
    .local v3, "score":I
    if-lez v1, :cond_0

    .line 47938
    new-instance v0, Lcom/facebook/ads/redexgen/X/K8;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/K8;-><init>(ILcom/facebook/ads/redexgen/X/Jz;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47939
    .end local v2    # "style":Lcom/facebook/ads/redexgen/X/Jz;
    .end local v3    # "score":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47940
    .end local v1    # "i":I
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    .line 47941
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "10DtqaDx3Mjis7pngfRsmCfeCaw0vB2Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x1c3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KB;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x0t
        0x55t
        0x44t
        0x30t
        0x3ft
        0x47t
        0x53t
        0x45t
        0x56t
        0x44t
        0x30t
        0x3ft
        0x47t
        0x45t
        0x0t
        0x6at
        0x76t
        0x33t
        0x14t
        0xct
        0x1bt
        0x16t
        0x13t
        0x1et
        0x5at
        0x5dt
        0xct
        0x1ft
        0x8t
        0xet
        0x13t
        0x19t
        0x1bt
        0x16t
        0x5dt
        0x5at
        0xct
        0x1bt
        0x16t
        0xft
        0x1ft
        0x40t
        0x5at
        0x3ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x56t
        0x17t
        0x1at
        0x1ft
        0x11t
        0x18t
        0x1bt
        0x13t
        0x18t
        0x2t
        0x56t
        0x0t
        0x17t
        0x1at
        0x3t
        0x13t
        0x4ct
        0x56t
        0x52t
        0x75t
        0x6dt
        0x7at
        0x77t
        0x72t
        0x7ft
        0x3bt
        0x7at
        0x75t
        0x78t
        0x73t
        0x74t
        0x69t
        0x3bt
        0x6dt
        0x7at
        0x77t
        0x6et
        0x7et
        0x21t
        0x3bt
        0x2et
        0x16t
        0x14t
        0xdt
        0xdt
        0x14t
        0x13t
        0x1at
        0x5dt
        0x1ft
        0x1ct
        0x19t
        0x5dt
        0x1et
        0x8t
        0x18t
        0x5dt
        0xet
        0x18t
        0x9t
        0x9t
        0x14t
        0x13t
        0x1at
        0x47t
        0x5dt
        0x3ft
        0x7t
        0x5t
        0x1ct
        0x1ct
        0x5t
        0x2t
        0xbt
        0x4ct
        0xft
        0x19t
        0x9t
        0x4ct
        0x1bt
        0x5t
        0x18t
        0x4t
        0x4ct
        0xet
        0xdt
        0x8t
        0x4ct
        0x4t
        0x9t
        0xdt
        0x8t
        0x9t
        0x1et
        0x56t
        0x4ct
        0x35t
        0xet
        0xbt
        0xet
        0xft
        0x17t
        0xet
        0x40t
        0x3t
        0x15t
        0x5t
        0x40t
        0x13t
        0x5t
        0x14t
        0x14t
        0x9t
        0xet
        0x7t
        0x40t
        0xat
        0x38t
        0x3ft
        0x2bt
        0x29t
        0x29t
        0x1et
        0x28t
        0x38t
        0xdt
        0x3ct
        0x2ft
        0x2et
        0x38t
        0x2ft
        0x28t
        0x53t
        0x2ft
        0x5dt
        0x2et
        0x7bt
        0xdt
        0x79t
        0x76t
        0xet
        0xct
        0x79t
        0x56t
        0xet
        0x8t
        0x8t
        0x1bt
        0x79t
        0x56t
        0xet
        0xdt
        0x79t
        0x76t
        0xet
        0xct
        0xdt
        0xbt
        0xft
        0xct
        0x1at
        0x1t
        0x51t
        0x5ct
        0x59t
        0x57t
        0x5et
        0xat
        0x6t
        0x1bt
        0x2dt
        0x5dt
        0x58t
        0x60t
        0x5dt
        0x53t
        0x5et
        0x5ct
        0x54t
        0x4t
        0x1t
        0x39t
        0x4t
        0xat
        0x13t
        0x3t
        0x77t
        0x72t
        0x4at
        0x76t
        0x6ct
        0x74t
        0x7bt
        0x76t
        0x73t
        0x4bt
        0x78t
        0x7dt
        0x79t
        0x71t
        0x7t
        0x2t
        0x3at
        0x8t
        0x4t
        0x2t
        0x0t
        0xbt
        0x11t
        0x4t
        0x27t
        0x22t
        0x1at
        0x37t
        0x20t
        0x21t
        0x40t
        0x45t
        0x7dt
        0x55t
        0x4at
        0x4bt
        0x56t
        0x47t
        0x5bt
        0x5et
        0x66t
        0x40t
        0x5ct
        0x55t
        0x55t
        0x56t
        0x4et
        0x6t
        0x8t
        0x5t
        0x7t
        0xft
        0xft
        0x1t
        0x18t
        0x8t
        0x7t
        0x65t
        0x63t
        0x68t
        0x72t
        0x63t
        0x74t
        0x7t
        0x1dt
        0x5t
        0xat
        0x75t
        0x7et
        0x74t
        0x41t
        0x52t
        0x0t
        0x3t
        0xdt
        0x4t
        0x5t
        0x18t
        0x3t
        0x4t
        0xdt
        0x4at
        0x1ft
        0x4t
        0x19t
        0x1ft
        0x1at
        0x1at
        0x5t
        0x18t
        0x1et
        0xft
        0xet
        0x4at
        0xft
        0x4t
        0x1et
        0x3t
        0x1et
        0x13t
        0x50t
        0x4at
        0x4dt
        0x4ct
        0x5at
        0x57t
        0x58t
        0x51t
        0x45t
        0x4ct
        0x4ft
        0x5dt
        0x6bt
        0x6et
        0x6at
        0x62t
        0x41t
        0x44t
        0x43t
        0x48t
        0x23t
        0x26t
        0x21t
        0x2at
        0x62t
        0x23t
        0x2at
        0x29t
        0x3bt
        0x71t
        0x74t
        0x73t
        0x78t
        0x30t
        0x6ft
        0x74t
        0x7at
        0x75t
        0x69t
        0x6at
        0x74t
        0x71t
        0x69t
        0x4ft
        0x43t
        0x45t
        0x47t
        0x4ct
        0x56t
        0x43t
        0x5t
        0x1t
        0xct
        0xct
        0x4t
        0xdt
        0x35t
        0x39t
        0x28t
        0x2bt
        0x1dt
        0x2t
        0x1et
        0x4t
        0x19t
        0x4t
        0x2t
        0x3t
        0x49t
        0x5et
        0x5ft
        0x54t
        0x4ft
        0x41t
        0x4et
        0x52t
        0x25t
        0x3bt
        0x45t
        0x43t
        0x7t
        0x0t
        0x17t
        0xct
        0x56t
        0x4ct
        0x5ft
        0x40t
        0x0t
        0x7t
        0x12t
        0x1t
        0x7t
        0x6et
        0x7ct
        0x2ct
        0x3ft
        0x28t
        0x2et
        0x33t
        0x39t
        0x3bt
        0x36t
        0x44t
        0x5bt
        0x5at
        0x47t
        0x56t
        0x34t
        0x28t
        0x21t
        0x21t
        0x22t
        0x3at
    .end array-data
.end method

.method public static A0G(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Jz;II)V
    .locals 5

    .line 47942
    if-nez p1, :cond_0

    .line 47943
    return-void

    .line 47944
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A08()I

    move-result v1

    const/4 v0, -0x1

    const/16 v3, 0x21

    if-eq v1, v0, :cond_1

    .line 47945
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A08()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 47946
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47947
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47948
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47949
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0T()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "1YLI45HvZzSZe2yut9V0MUcCwjpGC5gE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 47950
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47951
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0R()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47952
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A05()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 47953
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47954
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47955
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A04()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 47956
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47957
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 47958
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0K()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 47959
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47960
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A06()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47961
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A0P()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47962
    new-instance v0, Lcom/facebook/ads/redexgen/X/nw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nw;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47963
    :cond_7
    return-void

    .line 47964
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A03()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 47965
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47966
    goto :goto_0

    .line 47967
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A03()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 47968
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47969
    goto :goto_0

    .line 47970
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jz;->A03()F

    move-result v0

    float-to-int v2, v0

    const/4 v1, 0x1

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 47971
    invoke-static {p0, v0, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/3H;->A00(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 47972
    goto :goto_0

    .line 47973
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0H(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K7;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K6;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;)V"
        }
    .end annotation

    .line 47974
    .local p9, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p10, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    invoke-static {p4, p1, p2}, Lcom/facebook/ads/redexgen/X/KB;->A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)I

    move-result v6

    .line 47975
    .local v4, "rubyTagPosition":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47976
    .local v5, "sortedNestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47977
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K6;->A03()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47978
    const/4 v9, 0x0

    .line 47979
    .local v7, "deletedCharCount":I
    iget v8, p2, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    .line 47980
    .local v8, "lastRubyTextEnd":I
    const/4 v7, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 47981
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K6;->A02(Lcom/facebook/ads/redexgen/X/K6;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/K7;->A01:Ljava/lang/String;

    const/16 v2, 0x19f

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47982
    .end local p0    # null:Landroid/text/SpannableStringBuilder;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/K7;
    .end local p3    # null:Ljava/util/List;
    .end local p4    # null:Ljava/util/List;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47983
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/K6;

    .line 47984
    .local p0, "rubyTextElement":Lcom/facebook/ads/redexgen/X/K6;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/K6;->A02(Lcom/facebook/ads/redexgen/X/K6;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    invoke-static {p4, p1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A06(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)I

    move-result v1

    .line 47985
    const/4 v0, 0x1

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/KB;->A00(III)I

    move-result v4

    .line 47986
    .local p1, "rubyPosition":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/K6;->A02(Lcom/facebook/ads/redexgen/X/K6;)Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    sub-int/2addr v3, v9

    .line 47987
    .local p2, "adjustedRubyTextStart":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/K6;->A00(Lcom/facebook/ads/redexgen/X/K6;)I

    move-result v0

    sub-int/2addr v0, v9

    .line 47988
    .local p3, "adjustedRubyTextEnd":I
    invoke-virtual {p0, v3, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 47989
    .local p4, "rubyText":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 47990
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/nv;

    invoke-direct {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/nv;-><init>(Ljava/lang/String;I)V

    .line 47991
    const/16 v0, 0x21

    invoke-virtual {p0, v1, v8, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47992
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v9, v0

    .line 47993
    move v8, v3

    goto :goto_1

    .line 47994
    .end local v9    # "i":I
    :cond_1
    return-void
.end method

.method public static A0I(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 47995
    .local v6, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47996
    .local v1, "className":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A04:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v3, 0x21

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "YNIn8hUAyZDjSH3JhERqEXsouXgj93JS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v5, :cond_1

    .line 47997
    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A04:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47998
    .local v2, "color":I
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .end local v2    # "color":I
    goto :goto_0

    .line 47999
    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/KB;->A03:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "z1JdxX10iLj514Di1TKQv9nGlpU0X7eV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48000
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A03:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48001
    .restart local v2    # "color":I
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48002
    :cond_4
    return-void
.end method

.method public static A0J(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 48003
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x136

    const/16 v1, 0x1f

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x2

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48005
    :goto_1
    return-void

    .line 48006
    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48007
    goto :goto_1

    .line 48008
    :pswitch_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48009
    goto :goto_1

    .line 48010
    :pswitch_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48011
    goto :goto_1

    .line 48012
    :pswitch_3
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 48013
    goto :goto_1

    .line 48014
    :sswitch_0
    const/16 v2, 0x189

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xda

    const/4 v1, 0x3

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "0e7ADHSVMy4QvuNOaRsoWPMCToECBQOy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0jhJvpoe9graGazv1ZIcpM6WWqxYTLD3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_2
    const/16 v2, 0x133

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "Z6Yq6aysKH1bmBhKZFPJxCKyS02If"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_3
    const/16 v2, 0x17a

    const/4 v1, 0x2

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_2
        0xd88 -> :sswitch_3
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0K(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/K7;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K6;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Jz;",
            ">;)V"
        }
    .end annotation

    .line 48015
    .local p0, "nestedElements":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$Element;>;"
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCssStyle;>;"
    iget v4, p1, Lcom/facebook/ads/redexgen/X/K7;->A00:I

    .line 48016
    .local v0, "start":I
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 48017
    .local v1, "end":I
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/K7;->A01:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x21

    packed-switch v0, :pswitch_data_0

    .line 48018
    return-void

    .line 48019
    :sswitch_0
    const/16 v2, 0x1a1

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "p1tLKUYj0fLqnT8dJpZfHw2ryYMkTMQB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x1af

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x1ae

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x135

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const/16 v2, 0x125

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0xdd

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    .line 48020
    :pswitch_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/K7;->A03:Ljava/util/Set;

    invoke-static {p3, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/KB;->A0I(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    .line 48021
    goto :goto_1

    .line 48022
    :pswitch_1
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48023
    goto :goto_1

    .line 48024
    :pswitch_2
    invoke-static {p3, p0, p1, p2, p4}, Lcom/facebook/ads/redexgen/X/KB;->A0H(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;Ljava/util/List;Ljava/util/List;)V

    .line 48025
    goto :goto_1

    .line 48026
    :pswitch_3
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48027
    goto :goto_1

    .line 48028
    :pswitch_4
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, v0, v4, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 48029
    :goto_1
    :pswitch_5
    invoke-static {p4, p0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0E(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K7;)Ljava/util/List;

    move-result-object v2

    .line 48030
    .local v2, "applicableStyles":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;>;"
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 48031
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K8;->A01:Lcom/facebook/ads/redexgen/X/Jz;

    invoke-static {p3, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/KB;->A0G(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/Jz;II)V

    .line 48032
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48033
    .end local v3    # "i":I
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V
    .locals 7

    .line 48034
    const/16 v2, 0xa7

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/KB;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 48035
    .local v1, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48036
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "IuLRiWa83LmFflMS6GnqXQo4BkpBDAaM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v5, Ljava/lang/String;

    .line 48037
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48038
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const/16 v6, 0x161

    const/4 v2, 0x4

    const/16 v1, 0x2b

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48039
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0M(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V

    goto :goto_0

    .line 48040
    :cond_0
    const/16 v6, 0xd5

    const/4 v2, 0x5

    const/16 v1, 0x36

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48041
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A03(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A06:I

    goto :goto_0

    .line 48042
    :cond_1
    const/16 v6, 0x18d

    const/16 v2, 0x8

    const/16 v1, 0x6b

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48043
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/KB;->A0N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V

    goto :goto_0

    .line 48044
    :cond_2
    const/16 v6, 0x1a5

    const/4 v2, 0x4

    const/16 v1, 0x23

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48045
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A02:F

    goto/16 :goto_0

    .line 48046
    :cond_3
    const/16 v6, 0x1b0

    const/16 v2, 0x8

    const/16 v1, 0x5c

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48047
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A04(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A07:I

    goto/16 :goto_0

    .line 48048
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x93

    const/16 v2, 0x14

    const/16 v1, 0x66

    invoke-static {v6, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v5, 0xf

    const/4 v2, 0x1

    const/16 v1, 0x3c

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48049
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48050
    :cond_6
    return-void
.end method

.method public static A0M(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V
    .locals 4

    .line 48051
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48052
    .local v0, "commaIndex":I
    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 48053
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A01(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A03:I

    .line 48054
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48055
    :cond_0
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48056
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A00:F

    .line 48057
    iput v3, p1, Lcom/facebook/ads/redexgen/X/KA;->A04:I

    .line 48058
    :goto_0
    return-void

    .line 48059
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A00:F

    .line 48060
    const/4 v0, 0x1

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A04:I

    goto :goto_0
.end method

.method public static A0N(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KA;)V
    .locals 2

    .line 48061
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 48062
    .local v0, "commaIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 48063
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KB;->A02(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A05:I

    .line 48064
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48065
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A00(Ljava/lang/String;)F

    move-result v0

    iput v0, p1, Lcom/facebook/ads/redexgen/X/KA;->A01:F

    .line 48066
    return-void
.end method

.method public static A0O(Ljava/lang/String;)Z
    .locals 7

    .line 48067
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 48068
    return v6

    .line 48069
    :sswitch_0
    const/16 v2, 0x1a1

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v4, 0x19f

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "3Lkw1PxTKRAL7UJ3iME"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Pvn03sQd9gQ2SLf9pLX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x31

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x1af

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "nN5IyC8pDtxjsjNmobfqstup1YpOndtX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0xc

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "d0efHOF5zOPljB40"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x6

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_4
    const/16 v2, 0x1ae

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_5
    const/16 v2, 0x135

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KB;->A01:[Ljava/lang/String;

    const-string v1, "lfhFeDS1O2o1uIM0aOGK2jmnN5o1ZQFy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gZA4cz0ExJhogJKpMVDSuYGHtyxwi0jr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_6
    const/16 v2, 0x125

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const/16 v2, 0xdd

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 48070
    :pswitch_0
    return v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
