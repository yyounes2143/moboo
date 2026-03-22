.class public final Lcom/facebook/ads/androidx/media3/common/Metadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 84
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mhtWLLrhhof2c3oNGAikQ02zY04FWWhb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "D7PA5y5JB7lzm0w5G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zJXPfo0gMr3Jucw9cJGyuGk1ctIsyJh8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Rs3TDnOYdqPS5YfXoagNS3YNrnFCycs6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xjaJofD0dPUcmVvb8BJkqUvajzMbPe01"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BOBSub5c7lfBtbfZCMGuub2gKHyTzLoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LM9W6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jYsNszMUFrPRtUIi9AiskAAH1nkqNQHo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2b;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2b;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(J[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V
    .locals 0

    .line 10094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10095
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    .line 10096
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    .line 10097
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 10098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    .line 10100
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 10101
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    const-class v0, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aput-object v0, v1, v2

    .line 10102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10103
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    .line 10104
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 10105
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    .line 10106
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V
    .locals 2

    .line 10107
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(J[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    .line 10108
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const-string v1, "jJYb5XESnreQmnafz5VJdwPxqQSxn5xg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kTpneR3tTrjWo9SwHImypXlm89YhFqkJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v3, 0x1d

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const-string v1, "FHzPVNHLMxLnXBjwMdKkWWwrPs5hsjYz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "XDjvnqVH9aBEFffbIwnkls2Q80ahFTsl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x38t
        0x34t
        0x64t
        0x66t
        0x71t
        0x67t
        0x71t
        0x7at
        0x60t
        0x75t
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x40t
        0x7dt
        0x79t
        0x71t
        0x41t
        0x67t
        0x29t
        0x5ct
        0x57t
        0x4dt
        0x4bt
        0x50t
        0x5ct
        0x4at
        0x4t
    .end array-data
.end method


# virtual methods
.method public final A02()I
    .locals 1

    .line 10109
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public final A03(I)Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    .locals 1

    .line 10110
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 1

    .line 10111
    if-nez p1, :cond_0

    .line 10112
    return-object p0

    .line 10113
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A05([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public final varargs A05([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 4

    .line 10114
    array-length v0, p1

    if-nez v0, :cond_0

    .line 10115
    return-object p0

    .line 10116
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    .line 10117
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4a;->A1K([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(J[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    .line 10118
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 10119
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 10120
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 10121
    return v5

    .line 10122
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 10123
    .end local v2
    :cond_1
    return v2

    .line 10124
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 10125
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/Metadata;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .line 10126
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 10127
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 10128
    .end local v0    # "result":I
    .local v1, "result":I
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 10129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x8

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    .line 10130
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 10131
    iget-wide v5, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10132
    return-object v0

    .line 10133
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    .line 10134
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10135
    iget-object v7, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A01:[Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    array-length v6, v7

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v7, v4

    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 10136
    .local v4, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/Metadata;->A03:[Ljava/lang/String;

    const-string v1, "Y2eKphX3uEoYAY6qefSk2brdpzOum5mA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "2ZL0aXTB42gyCwKS7w8k2h86pmsl1x45"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10137
    .end local v4    # "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10138
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/common/Metadata;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10139
    return-void
.end method
