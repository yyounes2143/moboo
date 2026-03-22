.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:J

.field public final A04:Ljava/lang/String;

.field public final A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 493
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fLRqmQpZ4kY0i8vTWEGOnpMV91ymSlfn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8zOo15ITF94z8ATPK9WKDS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "U2m4A5dMOqyxzJZNInAoZQNrCqvEIF5h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0utQ64kMrCSPNyzTtjtqMzChb3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CvOd0LhZgWbGMd6rhkG6LB2Ont"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e86XCnP3M0yNUM5RfG9bdJbB6V7ObyMi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fMKUD6KL8xgqbKtIywVViKyqmpaHvM6m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cPxhgBJDfYBGNL1SVStSmk4ZWA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HY;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 24020
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24021
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 24022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    .line 24023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    .line 24024
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    .line 24025
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    .line 24026
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 24027
    .local v0, "subFrameCount":I
    new-array v0, v3, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24028
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 24029
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    const-class v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    aput-object v0, v1, v2

    .line 24030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24031
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 3

    .line 24032
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 24033
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 24034
    iput p2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    .line 24035
    iput p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    .line 24036
    iput-wide p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    .line 24037
    iput-wide p6, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    .line 24038
    iput-object p8, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24039
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x63

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
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A06:[B

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const-string v1, "THHQSJFvR7rYAiXI8hhxNOhOsk"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "DYa1Z8H6Y5FjGQTiVzX1rEZp9S"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x3dt
        0x36t
        0x3ft
        0x2et
    .end array-data
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 24040
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 24041
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 24042
    return v6

    .line 24043
    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const-string v1, "s8Y6al5xLmwNCTuxrrlilvhunCZyPKQu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "F4gClNwWGLEb8yuG5kUUO5qerkap3WyM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    .line 24044
    .end local v2
    :cond_1
    return v5

    .line 24045
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;

    .line 24046
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;
    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    if-ne v1, v0, :cond_4

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const-string v1, "YA00N3sF1UOtj77WS52yNrONrVf9FOsb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "phjHurmqkrzRpPO24UEXTTCj8ILagfx7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    .line 24047
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    .line 24048
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24049
    :goto_1
    return v6

    :cond_3
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A07:[Ljava/lang/String;

    const-string v1, "1cJSCMaKjmRDGa6IqnZMgyepuwbb5Zyk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "77QMpsyCXr9jCYPeO8IlygJc3WcEupIe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    goto :goto_0

    .line 24050
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 24051
    const/16 v0, 0x11

    .line 24052
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    add-int/2addr v1, v0

    .line 24053
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    add-int/2addr v1, v0

    .line 24054
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 24055
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 24056
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 24057
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 24058
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 24059
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A04:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24060
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24061
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24062
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24063
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24064
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24065
    iget-object v4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/ChapterFrame;->A05:[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    .line 24066
    .local v4, "subFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24067
    .end local v4    # "subFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24068
    :cond_0
    return-void
.end method
