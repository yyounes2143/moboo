.class public final Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements$RequirementFlags;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 624
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uwN5TqWruOwNeCy1aiqDeLgzeCho9gnR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uTqO4HZ69OtT2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pp7wWJEgHEGU283E"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XPZfXvI81RbECUtIqAEftJ2yNIIbXze1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5SwimXMBGWXyWjNLtwjqMnX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7CGYXLa6aYpujc5oADJ5LB3FbDI8uqBi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FEMkx52dE2zGpzw1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Fv9wompXFxfx6YB8Vj7MYx3uqzKPyKZl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bm;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31459
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 31460
    or-int/lit8 p1, p1, 0x1

    .line 31461
    :cond_0
    iput p1, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    .line 31462
    return-void
.end method

.method private A00(Landroid/content/Context;)I
    .locals 6

    .line 31463
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A0A()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 31464
    return v5

    .line 31465
    :cond_0
    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 31466
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 31467
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 31468
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31469
    invoke-static {v4}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A06(Landroid/net/ConnectivityManager;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

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
    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const-string v1, "RKqvXcDMvtoTOxGBV3lSSEVfZ64ZYoxU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 31470
    :cond_2
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    and-int/lit8 v0, v0, 0x3

    return v0

    .line 31471
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A0C()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const-string v1, "RJMLW2AndFlsS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "adHoYRSEIssUTsmuQLV0TXA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 31472
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const-string v1, "EctWe7FhnH81C"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lAwOl2qOFCjLVAIEQ1yyJzT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const-string v1, "YeFdaHJUx43hD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "U4BsCHt3kJE5KJEOEKp0bYO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 31473
    :cond_6
    return v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x68

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

    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x31t
        0x27t
        0x35t
        0x32t
        0x2ct
        0x27t
        -0xft
        0x2ct
        0x31t
        0x37t
        0x28t
        0x31t
        0x37t
        -0xft
        0x24t
        0x26t
        0x37t
        0x2ct
        0x32t
        0x31t
        -0xft
        0x5t
        0x4t
        0x17t
        0x17t
        0x8t
        0x15t
        0x1ct
        0x22t
        0x6t
        0xbt
        0x4t
        0x11t
        0xat
        0x8t
        0x7t
        -0xdt
        0x0t
        -0xat
        0x4t
        0x1t
        -0x5t
        -0xat
        -0x40t
        -0x5t
        0x0t
        0x6t
        -0x9t
        0x0t
        0x6t
        -0x40t
        -0xdt
        -0xbt
        0x6t
        -0x5t
        0x1t
        0x0t
        -0x40t
        -0x2at
        -0x29t
        -0x18t
        -0x25t
        -0x2bt
        -0x29t
        -0xft
        -0x1bt
        -0x1at
        -0x1ft
        -0x1ct
        -0x2dt
        -0x27t
        -0x29t
        -0xft
        -0x22t
        -0x1ft
        -0x17t
        -0x19t
        -0xdt
        -0xet
        -0xet
        -0x17t
        -0x19t
        -0x8t
        -0x13t
        -0x6t
        -0x13t
        -0x8t
        -0x3t
        -0x9t
        -0xat
        -0x2t
        -0x14t
        -0x7t
        0x3t
        0x4t
        -0xft
        0x4t
        0x5t
        0x3t
    .end array-data
.end method

.method private A03(Landroid/content/Context;)Z
    .locals 5

    .line 31474
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31475
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 31476
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/4 v3, 0x0

    if-nez v4, :cond_0

    .line 31477
    return v3

    .line 31478
    :cond_0
    const/16 v2, 0x5e

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31479
    .local v2, "status":I
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private A04(Landroid/content/Context;)Z
    .locals 4

    .line 31480
    const/16 v2, 0x59

    const/4 v1, 0x5

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 31481
    .local v0, "powerManager":Landroid/os/PowerManager;
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 31482
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 31483
    :goto_0
    return v0

    .line 31484
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x14

    if-lt v1, v0, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A02:[Ljava/lang/String;

    const-string v1, "0vwiCxXTqkOZryo8en8HAet2lmwum6iC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A05(Landroid/content/Context;)Z
    .locals 3

    .line 31485
    const/16 v2, 0x25

    const/16 v1, 0x28

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A06(Landroid/net/ConnectivityManager;)Z
    .locals 3

    .line 31486
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    .line 31487
    return v2

    .line 31488
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 31489
    .local v0, "activeNetwork":Landroid/net/Network;
    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 31490
    return v0

    .line 31491
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 31492
    .local p0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_2

    .line 31493
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 31494
    :goto_0
    return v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31495
    .end local p0    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v1, "e":Ljava/lang/SecurityException;
    :catch_0
    return v2
.end method


# virtual methods
.method public final A07(Landroid/content/Context;)I
    .locals 2

    .line 31496
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00(Landroid/content/Context;)I

    move-result v1

    .line 31497
    .local v0, "notMetRequirements":I
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A03(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31498
    or-int/lit8 v1, v1, 0x8

    .line 31499
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A09()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A04(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31500
    or-int/lit8 v1, v1, 0x4

    .line 31501
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A0B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A05(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 31502
    or-int/lit8 v1, v1, 0x10

    .line 31503
    :cond_2
    return v1
.end method

.method public final A08()Z
    .locals 1

    .line 31504
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09()Z
    .locals 1

    .line 31505
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0A()Z
    .locals 2

    .line 31506
    iget v1, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 1

    .line 31507
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C()Z
    .locals 1

    .line 31508
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .line 31509
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 31510
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 31511
    return v3

    .line 31512
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 31513
    :cond_1
    return v2

    .line 31514
    :cond_2
    iget v1, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    check-cast p1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;

    iget v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .line 31515
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 31516
    iget v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/scheduler/Requirements;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31517
    return-void
.end method
