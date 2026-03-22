.class public final Lcom/facebook/ads/redexgen/X/7B;
.super Lcom/facebook/ads/redexgen/X/iA;
.source ""


# static fields
.field public static A0D:Lcom/facebook/ads/redexgen/X/SF;

.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Mh;

.field public A02:Lcom/facebook/ads/redexgen/X/Mi;

.field public A03:Lcom/facebook/ads/redexgen/X/Mo;

.field public A04:Lcom/facebook/ads/redexgen/X/dL;

.field public A05:Lcom/facebook/ads/redexgen/X/Vb;

.field public A06:Lcom/facebook/ads/redexgen/X/bt;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 420
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "g9SdUg6XNSnvVCS02jX19aczyGq48qDV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lGSQ9LsgX83H3UqklEPZgAjaPEKabNT0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0oXMo4BXc2on8MNFvJxgBv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ulfd9L14l0ScyK0QB689zsPu0EZ5wfqr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W3xKKEfUMxBXJmvfztSkCM8j4ls7Vw3H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lNYBpqeQZYlfeCveDiVEAZh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rx8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "elj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7B;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20987
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iA;-><init>()V

    .line 20988
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0B:Ljava/lang/String;

    .line 20989
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;
    .locals 0

    .line 20990
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mo;
    .locals 0

    .line 20991
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 20992
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Vb;
    .locals 0

    .line 20993
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/bt;)Lcom/facebook/ads/redexgen/X/bt;
    .locals 0

    .line 20994
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7B;->A06:Lcom/facebook/ads/redexgen/X/bt;

    return-object p1
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7B;->A0E:[B

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

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 20995
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A07()V
    .locals 3

    .line 20996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A02:Lcom/facebook/ads/redexgen/X/Mi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A02:Lcom/facebook/ads/redexgen/X/Mi;

    .line 20997
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A00()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20998
    return-void
.end method

.method private A08()V
    .locals 2

    .line 20999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A02:Lcom/facebook/ads/redexgen/X/Mi;

    if-eqz v0, :cond_0

    .line 21000
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OO;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A02:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A05(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21001
    :catch_0
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xb6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7B;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x62t
        -0x10t
        -0xet
        -0xet
        -0xct
        -0x5t
        -0xct
        0x1t
        -0x2t
        -0x4t
        -0xct
        0x3t
        -0xct
        0x1t
        -0x12t
        0x1t
        -0x2t
        0x3t
        -0x10t
        0x3t
        -0x8t
        -0x2t
        -0x3t
        -0x3at
        -0x2dt
        -0x3ct
        -0x3at
        -0x38t
        -0x27t
        -0x32t
        -0x25t
        -0x32t
        -0x27t
        -0x22t
        0x1t
        0x6t
        -0x1t
        0x7t
        0xct
        0x3t
        0x2t
        -0x21t
        0x2t
        -0x1et
        -0x1t
        0x12t
        -0x1t
        -0x20t
        0x13t
        0xct
        0x2t
        0xat
        0x3t
        0x1dt
        0x15t
        0x14t
        0x19t
        0x11t
        0x24t
        0x19t
        0x1ft
        0x1et
        -0xct
        0x11t
        0x24t
        0x11t
        0x10t
        0xct
        0x1t
        0x3t
        0x5t
        0xdt
        0x5t
        0xet
        0x14t
        -0x17t
        0x4t
        -0x44t
        -0x42t
        -0x4ft
        -0x50t
        -0x4ft
        -0x4et
        -0x4bt
        -0x46t
        -0x4ft
        -0x50t
        -0x65t
        -0x42t
        -0x4bt
        -0x4ft
        -0x46t
        -0x40t
        -0x53t
        -0x40t
        -0x4bt
        -0x45t
        -0x46t
        -0x69t
        -0x4ft
        -0x3bt
        -0x11t
        -0x1et
        -0x12t
        -0xet
        -0x1et
        -0x10t
        -0xft
        -0x2ft
        -0x1at
        -0x16t
        -0x1et
        -0x2t
        -0xft
        0x3t
        -0x13t
        -0x2t
        -0x10t
        -0x21t
        -0xft
        -0x2t
        0x2t
        -0xft
        -0x2t
        -0x1ft
        -0x22t
        -0x28t
        -0xdt
        -0x1at
        -0x8t
        -0x1et
        -0xdt
        -0x1bt
        -0x1at
        -0x1bt
        -0x29t
        -0x16t
        -0x1bt
        -0x1at
        -0x10t
        -0x3et
        -0x1bt
        -0x3bt
        -0x1et
        -0xbt
        -0x1et
        -0x3dt
        -0xat
        -0x11t
        -0x1bt
        -0x13t
        -0x1at
        0x1ct
        0xft
        0x21t
        0xbt
        0x1ct
        0xet
        0xft
        0xet
        0x9t
        0x20t
        0x13t
        0xet
        0xft
        0x19t
        -0x3dt
        -0x44t
        -0x49t
        -0x41t
        -0x3dt
        -0x4dt
        -0x69t
        -0x4et
        -0x4t
        -0x11t
        -0x15t
        -0x3t
        -0x26t
        -0x1t
        -0xat
        -0x15t
    .end array-data
.end method

.method private A0A(Landroid/content/Intent;)V
    .locals 6

    .line 21002
    iget v5, p0, Lcom/facebook/ads/redexgen/X/iA;->A00:I

    const/4 v4, -0x1

    const/16 v2, 0x4d

    const/16 v1, 0x18

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v4, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21003
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 21004
    const/4 v2, 0x1

    const/16 v1, 0x16

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 21005
    iget v4, p0, Lcom/facebook/ads/redexgen/X/iA;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const-string v1, "RWC7frN5DjKRH0uo4BJmLzj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FPcb0UYEDF6wwONX6Ty9E2F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21006
    :cond_0
    :goto_0
    return-void

    .line 21007
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/U7;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21008
    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const-string v1, "O4w3do1khQsKhsE3USwlJ7C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rALKIAVwphrvKmHx0hqaLzY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/U7;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V
    .locals 0

    .line 21009
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7B;->A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V
    .locals 12

    .line 21010
    move-object v10, p2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    move v11, p3

    if-lt v11, v0, :cond_0

    .line 21011
    return-void

    .line 21012
    :cond_0
    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/73;

    .line 21013
    .local v0, "currentAdDataBundle":Lcom/facebook/ads/redexgen/X/73;
    new-instance v0, Lcom/facebook/ads/redexgen/X/SF;

    move-object v8, p1

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7B;->A0D:Lcom/facebook/ads/redexgen/X/SF;

    .line 21014
    sget-object v3, Lcom/facebook/ads/redexgen/X/7B;->A0D:Lcom/facebook/ads/redexgen/X/SF;

    .line 21015
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 21016
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 21017
    sget-object v0, Lcom/facebook/ads/redexgen/X/7B;->A0D:Lcom/facebook/ads/redexgen/X/SF;

    invoke-static {v8, v0, v9}, Lcom/facebook/ads/redexgen/X/NS;->A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/73;)V

    .line 21018
    if-nez v11, :cond_1

    const/4 v7, 0x1

    .line 21019
    .local v3, "failOnCacheFailure":Z
    :goto_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/7B;->A0D:Lcom/facebook/ads/redexgen/X/SF;

    new-instance v5, Lcom/facebook/ads/redexgen/X/7C;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Lcom/facebook/ads/redexgen/X/7B;ZLcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/73;Lcom/facebook/ads/redexgen/X/hw;I)V

    .line 21020
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, v3, v1, v11}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21021
    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    .line 21022
    return-void

    .line 21023
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private A0D(Z)V
    .locals 2

    .line 21024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0F:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_0

    .line 21025
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7B;->A0F(Z)V

    .line 21026
    :goto_0
    return-void

    .line 21027
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0H:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_1

    .line 21028
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7B;->A0G(Z)V

    goto :goto_0

    .line 21029
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0G:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_2

    .line 21030
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7B;->A0E(Z)V

    goto :goto_0

    .line 21031
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7B;->A0G(Z)V

    goto :goto_0
.end method

.method private A0E(Z)V
    .locals 10

    .line 21032
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/iA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 21033
    .local v1, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21034
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21035
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rf;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 21036
    .local v2, "isUnifiedAssetsLoaderEnabled":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 21037
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21038
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21039
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21040
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/iI;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/iI;-><init>(Lcom/facebook/ads/redexgen/X/7B;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Re;)V

    .line 21041
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    .line 21042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 21044
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 21045
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rf;->A0B()V

    .line 21046
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    :goto_1
    return-void

    .line 21047
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v1, Lcom/facebook/ads/redexgen/X/hy;

    new-instance v0, Lcom/facebook/ads/redexgen/X/iH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iH;-><init>(Lcom/facebook/ads/redexgen/X/7B;)V

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ZLcom/facebook/ads/redexgen/X/NP;)V

    goto :goto_1

    .line 21048
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private A0F(Z)V
    .locals 6

    .line 21049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 21050
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    .line 21051
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 21052
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 21053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/73;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/NS;->A03(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/73;)V

    .line 21054
    new-instance v4, Lcom/facebook/ads/redexgen/X/iM;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/iM;-><init>(Lcom/facebook/ads/redexgen/X/7B;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21055
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21056
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    .line 21057
    return-void
.end method

.method private A0G(Z)V
    .locals 13

    .line 21058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 21059
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v3, Lcom/facebook/ads/redexgen/X/hw;

    .line 21060
    .local v0, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    move-object v2, p0

    .line 21061
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/iA;
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 21062
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    .line 21063
    .local v4, "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21064
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21065
    return-void

    .line 21066
    .end local v4    # "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21067
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {p0, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/7B;->A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V

    .line 21068
    .end local v0    # "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    .end local v2    # "adapter":Lcom/facebook/ads/redexgen/X/iA;
    goto :goto_1

    .line 21069
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 21070
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    .line 21071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 21073
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 21074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21075
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rf;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 21077
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v10

    .line 21078
    .local v2, "isDSL":Z
    if-eqz v8, :cond_4

    .line 21079
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21081
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21082
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/iK;

    invoke-direct {v9, p0, v10}, Lcom/facebook/ads/redexgen/X/iK;-><init>(Lcom/facebook/ads/redexgen/X/7B;Z)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Re;)V

    .line 21083
    .local v3, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rf;->A0B()V

    .line 21084
    .end local v3    # "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    .end local v1    # "isUnifiedAssetsLoaderEnabled":Z
    .end local v2    # "isDSL":Z
    .end local v9
    .end local v10
    :goto_1
    return-void

    .line 21085
    :cond_4
    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v11, Lcom/facebook/ads/redexgen/X/73;

    .line 21086
    .local v9, "adDataBundle":Lcom/facebook/ads/redexgen/X/73;
    move-object v12, p0

    .line 21087
    .local v10, "adapter":Lcom/facebook/ads/redexgen/X/iA;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21088
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0I:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne v1, v0, :cond_5

    .line 21089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADm()V

    .line 21090
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v12, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21091
    return-void

    .line 21092
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v4, v11}, Lcom/facebook/ads/redexgen/X/NS;->A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/73;)V

    .line 21093
    new-instance v7, Lcom/facebook/ads/redexgen/X/7E;

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7E;-><init>(Lcom/facebook/ads/redexgen/X/7B;ZZLcom/facebook/ads/redexgen/X/73;Lcom/facebook/ads/redexgen/X/iA;)V

    .line 21094
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21095
    invoke-virtual {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    goto :goto_1
.end method


# virtual methods
.method public final A0H()I
    .locals 1

    .line 21096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    if-nez v0, :cond_0

    .line 21097
    const/4 v0, -0x1

    return v0

    .line 21098
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0m()I

    move-result v0

    return v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/Mo;
    .locals 1

    .line 21099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    return-object v0
.end method

.method public final A0J()Z
    .locals 7

    .line 21100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 21101
    return v5

    .line 21102
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Mo;->A1E(J)V

    .line 21103
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iA;->A02:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A07:Ljava/lang/String;

    .line 21104
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dI;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21105
    .local v0, "rewardUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iA;->A02:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1F(Lcom/facebook/ads/RewardData;)V

    .line 21106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mo;->A1J(Ljava/lang/String;)V

    .line 21107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WB;->A05(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v3

    .line 21108
    .local v2, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    const/16 v2, 0xae

    const/16 v1, 0x8

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21109
    const/16 v2, 0x7f

    const/16 v1, 0x19

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21110
    const/16 v2, 0x22

    const/16 v1, 0x13

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21111
    const/16 v2, 0xa6

    const/16 v1, 0x8

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21112
    if-eqz v4, :cond_1

    .line 21113
    const/16 v2, 0x70

    const/16 v1, 0xf

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21114
    :cond_1
    const/16 v2, 0x42

    const/16 v1, 0xb

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0A:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21115
    const/16 v2, 0x65

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 21116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A09:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 21117
    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A09:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21118
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/7B;->A0A(Landroid/content/Intent;)V

    .line 21119
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21120
    invoke-virtual {v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    .line 21121
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 21122
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WB;->A0I(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)Z

    move-result v0

    .line 21124
    .local v3, "launchResult":Z
    if-nez v0, :cond_8

    .line 21125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHS()V

    .line 21126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    if-eqz v0, :cond_4

    .line 21127
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21128
    :cond_4
    return v5

    .line 21129
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WB;->A0B(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 21130
    :catch_0
    move-exception v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21131
    .local v1, "e":Lcom/facebook/ads/redexgen/X/W9;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const-string v1, "zr3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "zCM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 21132
    .local v3, "exceptionToLog":Ljava/lang/Throwable;
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21133
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A01:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 21134
    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 21135
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/W9;
    .end local v3    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mh;Lcom/facebook/ads/redexgen/X/NU;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 21136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21138
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    .line 21139
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0A:Ljava/lang/String;

    .line 21140
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A00:J

    .line 21141
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/7B;->A09:Ljava/lang/String;

    .line 21142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A0A:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7B;->A0A:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const-string v1, "x5W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "dMK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A07:Ljava/lang/String;

    .line 21143
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v1

    .line 21144
    .local v0, "dataObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A03(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/Mo;->A1H(Ljava/lang/String;)V

    .line 21146
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    .line 21147
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A06()I

    move-result v0

    .line 21148
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1D(I)V

    .line 21149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A20()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A08:Ljava/lang/String;

    .line 21151
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21152
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A08:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1P()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A08:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 21155
    .end local v1
    :goto_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A0v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21156
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7B;->A0F:[Ljava/lang/String;

    const-string v1, "c2SjyVfNFMTSQhwflPzyjFy3Fjr2snH4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "k4vT1WhZbJ1Mlr1eks5fTJscMmdnfo8D"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mo;->A1T()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21157
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v4, Lcom/facebook/ads/redexgen/X/hw;

    .line 21158
    .local v1, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v3, :cond_7

    .line 21159
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/hw;->A1x(I)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    .line 21160
    .local v3, "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21161
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 21162
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/io;

    move-result-object v1

    .line 21163
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    .line 21164
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 21166
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/hw;->A22(I)V

    .line 21167
    return-void

    .line 21168
    .end local v3    # "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 21169
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0A:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto :goto_2

    .line 21170
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0l()I

    move-result v0

    .line 21171
    .local v1, "experienceType":I
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 21172
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0I:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0E:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto/16 :goto_2

    .line 21174
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0F:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A04:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 21176
    goto/16 :goto_2

    .line 21177
    :pswitch_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A05:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 21179
    goto/16 :goto_2

    .line 21180
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0G:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0C:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 21182
    goto/16 :goto_2

    .line 21183
    :pswitch_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0H:Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A05:Lcom/facebook/ads/redexgen/X/Vb;

    .line 21184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0D:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 21185
    goto/16 :goto_2

    .line 21186
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A08:Ljava/lang/String;

    goto/16 :goto_1

    .line 21187
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/hw;->A1u()I

    move-result v0

    if-nez v0, :cond_9

    .line 21188
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21189
    return-void

    .line 21190
    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21191
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A03:Lcom/facebook/ads/redexgen/X/Mo;

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    .line 21192
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 21193
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A01(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/io;

    move-result-object v1

    .line 21194
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    .line 21195
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 21197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A01:Lcom/facebook/ads/redexgen/X/Mh;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21198
    return-void

    .line 21199
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7B;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/redexgen/X/Mh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A02:Lcom/facebook/ads/redexgen/X/Mi;

    .line 21200
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7B;->A07()V

    .line 21201
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/7B;->A0D(Z)V

    .line 21202
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 21203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7B;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final AJa()Z
    .locals 1

    .line 21204
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 21205
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7B;->A08()V

    .line 21206
    return-void
.end method
