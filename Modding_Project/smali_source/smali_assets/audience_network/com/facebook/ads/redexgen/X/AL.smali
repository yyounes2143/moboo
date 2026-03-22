.class public final Lcom/facebook/ads/redexgen/X/AL;
.super Lcom/facebook/ads/redexgen/X/mj;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1Y;,
        Lcom/facebook/ads/redexgen/X/1X;,
        Lcom/facebook/ads/redexgen/X/1Z;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/mj<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/mj<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final transient A00:[Ljava/lang/Object;

.field public final transient A01:I

.field public final transient A02:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 592
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BLd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8EKeVjTJIU6MDNPM6ZTo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HWbOsw9VtzWta1ewMSd8SFleZB3uycJV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4g"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oHZcZe8PYtJP7zuLK1jInYJjmOVWCxEe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hqSXyAZ2zuGNDHd4PkKakj6NBzhfvhom"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1gwnz8jAk7EqAxYvZHDnpar6edM6d04"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wfrdBhaNwCqY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/AL;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/mj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTable",
            "alternatingKeysAndValues",
            "size"
        }
    .end annotation

    .line 28961
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mj;-><init>()V

    .line 28962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Ljava/lang/Object;

    .line 28963
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:[Ljava/lang/Object;

    .line 28964
    iput p3, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    .line 28965
    return-void
.end method

.method public static A00(I[Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/mh;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "alternatingKeysAndValues",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lcom/facebook/ads/redexgen/X/mh<",
            "TK;TV;>;)",
            "Lcom/facebook/ads/redexgen/X/AL<",
            "TK;TV;>;"
        }
    .end annotation

    .line 28966
    .local p4, "builder":Lcom/facebook/ads/redexgen/X/mh;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    if-nez p0, :cond_0

    .line 28967
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/mj;

    check-cast v0, Lcom/facebook/ads/redexgen/X/AL;

    .line 28968
    .local v0, "empty":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    return-object v0

    .line 28969
    .end local v0    # "empty":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 28970
    aget-object v0, p1, v1

    .line 28971
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28972
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ll;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28973
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v1, p1, v3}, Lcom/facebook/ads/redexgen/X/AL;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 28974
    :cond_1
    array-length v0, p1

    shr-int/2addr v0, v3

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/jA;->A01(II)I

    .line 28975
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Al;->A03(I)I

    move-result v0

    .line 28976
    .local v2, "tableSize":I
    invoke-static {p1, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/AL;->A02([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    .line 28977
    .local v3, "hashTablePlus":Ljava/lang/Object;
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 28978
    check-cast v2, [Ljava/lang/Object;

    .line 28979
    .local p0, "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mg;

    .line 28980
    .local p1, "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    if-eqz p2, :cond_3

    .line 28981
    iput-object v0, p2, Lcom/facebook/ads/redexgen/X/mh;->A01:Lcom/facebook/ads/redexgen/X/mg;

    .line 28982
    aget-object v1, v2, v1

    .line 28983
    .local v0, "hashTable":Ljava/lang/Object;
    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 28984
    mul-int/lit8 v0, p0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 28985
    .end local p0    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .end local p1    # "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    .restart local v0    # "hashTable":Ljava/lang/Object;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/AL;

    invoke-direct {v0, v1, p1, p0}, Lcom/facebook/ads/redexgen/X/AL;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 28986
    .end local p0
    .end local p1
    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 28987
    .end local v0    # "hashTable":Ljava/lang/Object;
    .restart local p0    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .restart local p1    # "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mg;->A02()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static A01(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashTableObject",
            "alternatingKeysAndValues",
            "size",
            "keyOffset",
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 28988
    const/4 v7, 0x0

    if-nez p4, :cond_0

    .line 28989
    return-object v7

    .line 28990
    :cond_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 28991
    aget-object v0, p1, p3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28992
    xor-int/lit8 v0, p3, 0x1

    aget-object v3, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_7

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28993
    :cond_2
    if-nez p0, :cond_3

    .line 28994
    return-object v7

    .line 28995
    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 28996
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "33E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0IVWz8DDpNA7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast p0, [B

    .line 28997
    .local v2, "hashTable":[B
    array-length v3, p0

    sub-int/2addr v3, v4

    .line 28998
    .local v3, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v5

    .line 28999
    .local v1, "h":I
    :goto_0
    and-int/2addr v5, v3

    .line 29000
    aget-byte v4, p0, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "Av4xGd01JYXCpVUXSFBX5Q3qG21nzo21"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "UuPO1t2w2j7pNt6wRWMrea5HC47YMJTH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0xff

    and-int/2addr v4, v0

    .line 29001
    .local v4, "keyIndex":I
    if-ne v4, v0, :cond_4

    .line 29002
    return-object v7

    .line 29003
    :cond_4
    aget-object v0, p1, v4

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "uEfKnUldtWRHisqrfIDf4ni9PGEoRP0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v6, :cond_6

    .line 29004
    :goto_1
    xor-int/lit8 v0, v4, 0x1

    aget-object v3, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_9

    return-object v3

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "rg32th7lbb1pJpYlIRnh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v6, :cond_6

    goto :goto_1

    .line 29005
    .end local v4    # "keyIndex":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "QVSrtcZKARogVSSTsDMErisHHhx3s08I"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "AM5zanCyyloF9oZfJSoNtkvSUtakyhf1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 29006
    :cond_8
    return-object v7

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "OPXdJDLfRI5AGRwdD0N1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29007
    .end local v1    # "h":I
    .end local v2    # "hashTable":[B
    .end local v3    # "mask":I
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_e

    .line 29008
    check-cast p0, [S

    .line 29009
    .local v2, "hashTable":[S
    array-length v3, p0

    sub-int/2addr v3, v4

    .line 29010
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v2

    .line 29011
    .restart local v1    # "h":I
    :goto_2
    and-int/2addr v2, v3

    .line 29012
    aget-short v1, p0, v2

    const v0, 0xffff

    and-int/2addr v1, v0

    .line 29013
    .restart local v4    # "keyIndex":I
    if-ne v1, v0, :cond_c

    .line 29014
    return-object v7

    .line 29015
    :cond_c
    aget-object v0, p1, v1

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29016
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 29017
    .end local v4    # "keyIndex":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 29018
    .end local v1    # "h":I
    .end local v2    # "hashTable":[S
    .end local v3    # "mask":I
    :cond_e
    check-cast p0, [I

    .line 29019
    .local v2, "hashTable":[I
    array-length v3, p0

    sub-int/2addr v3, v4

    .line 29020
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v2

    .line 29021
    .restart local v1    # "h":I
    :goto_3
    and-int/2addr v2, v3

    .line 29022
    aget v1, p0, v2

    .line 29023
    .restart local v4    # "keyIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_f

    .line 29024
    return-object v7

    .line 29025
    :cond_f
    aget-object v0, p1, v1

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29026
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 29027
    .end local v4    # "keyIndex":I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static A02([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alternatingKeysAndValues",
            "n",
            "tableSize",
            "keyOffset"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 29028
    const/4 v0, 0x1

    move/from16 v5, p1

    if-ne v5, v0, :cond_0

    .line 29029
    aget-object v0, p0, p3

    .line 29030
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    xor-int/lit8 v0, p3, 0x1

    aget-object v0, p0, v0

    .line 29031
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29032
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ll;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29033
    const/4 v0, 0x0

    return-object v0

    .line 29034
    :cond_0
    move/from16 v1, p2

    add-int/lit8 v15, v1, -0x1

    .line 29035
    .local v3, "mask":I
    const/4 v3, 0x0

    .line 29036
    .local v4, "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    const/16 v0, 0x80

    const/4 v4, 0x3

    const/4 v11, -0x1

    if-gt v1, v0, :cond_6

    .line 29037
    new-array v1, v1, [B

    .line 29038
    .local v5, "hashTable":[B
    invoke-static {v1, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 29039
    const/4 v6, 0x0

    .line 29040
    .local v8, "outI":I
    const/4 v7, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 29041
    mul-int/lit8 v2, v7, 0x2

    add-int v2, v2, p3

    .line 29042
    .local v11, "keyIndex":I
    mul-int/lit8 v10, v6, 0x2

    add-int v10, v10, p3

    .line 29043
    .local v12, "outKeyIndex":I
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 29044
    .local v13, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v2, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29045
    .local v14, "value":Ljava/lang/Object;
    invoke-static {v8, v2}, Lcom/facebook/ads/redexgen/X/ll;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29046
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v11

    .line 29047
    .local v15, "h":I
    :goto_1
    and-int/2addr v11, v15

    .line 29048
    aget-byte v9, v1, v11

    const/16 v0, 0xff

    and-int/2addr v9, v0

    .line 29049
    .local v9, "previousKeyIndex":I
    if-ne v9, v0, :cond_2

    .line 29050
    int-to-byte v0, v10

    aput-byte v0, v1, v11

    .line 29051
    .end local v9    # "previousKeyIndex":I
    .end local v15    # "h":I
    if-ge v6, v7, :cond_1

    .line 29052
    aput-object v8, p0, v10

    .line 29053
    xor-int/lit8 v0, v10, 0x1

    aput-object v2, p0, v0

    .line 29054
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 29055
    .end local v2
    .end local v9
    .end local v11    # "keyIndex":I
    .end local v12    # "outKeyIndex":I
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15
    .restart local v4    # "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 29056
    .restart local v9    # "previousKeyIndex":I
    .restart local v15    # "h":I
    :cond_2
    aget-object v0, p0, v9

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29057
    new-instance v3, Lcom/facebook/ads/redexgen/X/mg;

    xor-int/lit8 v0, v9, 0x1

    aget-object v0, p0, v0

    .line 29058
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v8, v2, v0}, Lcom/facebook/ads/redexgen/X/mg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29059
    .end local v4    # "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    .local v2, "duplicateKey":Lcom/facebook/ads/redexgen/X/mg;
    xor-int/lit8 v0, v9, 0x1

    aput-object v2, p0, v0

    .line 29060
    goto :goto_2

    .line 29061
    .restart local v11    # "keyIndex":I
    .restart local v12    # "outKeyIndex":I
    .restart local v13    # "key":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Object;
    .restart local v15    # "h":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 29062
    .end local v10    # "i":I
    .end local v11    # "keyIndex":I
    .end local v12    # "outKeyIndex":I
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "h":I
    :cond_4
    if-ne v6, v5, :cond_5

    move-object v2, v1

    :goto_3
    return-object v2

    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    goto :goto_3

    .line 29063
    .end local v5    # "hashTable":[B
    .end local v8    # "outI":I
    :cond_6
    const v0, 0x8000

    if-gt v1, v0, :cond_d

    .line 29064
    new-array v7, v1, [S

    .line 29065
    .local v2, "hashTable":[S
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 29066
    const/4 v8, 0x0

    .line 29067
    .local v5, "outI":I
    const/4 v10, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v10, v5, :cond_b

    .line 29068
    mul-int/lit8 v1, v10, 0x2

    add-int v1, v1, p3

    .line 29069
    .local v8, "keyIndex":I
    mul-int/lit8 v12, v8, 0x2

    add-int v12, v12, p3

    .line 29070
    .local v9, "outKeyIndex":I
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 29071
    .local v10, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 29072
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v11, v9}, Lcom/facebook/ads/redexgen/X/ll;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29073
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v14

    .line 29074
    .local v12, "h":I
    :goto_5
    and-int/2addr v14, v15

    .line 29075
    aget-short v6, v7, v14

    const v0, 0xffff

    and-int/2addr v6, v0

    .line 29076
    .local v13, "previousKeyIndex":I
    if-ne v6, v0, :cond_8

    .line 29077
    int-to-short v0, v12

    aput-short v0, v7, v14

    .line 29078
    .end local v12    # "h":I
    .end local v13    # "previousKeyIndex":I
    if-ge v8, v10, :cond_7

    .line 29079
    aput-object v11, p0, v12

    .line 29080
    xor-int/lit8 v0, v12, 0x1

    aput-object v9, p0, v0

    .line 29081
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 29082
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12
    .end local v13
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 29083
    .restart local v12    # "h":I
    .restart local v13    # "previousKeyIndex":I
    :cond_8
    aget-object v0, p0, v6

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/AL;->A03:[Ljava/lang/String;

    const-string v1, "XeR3XdSVagosh0VhP9e0zQ2n8NaTx8OB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v13, :cond_a

    .line 29084
    new-instance v3, Lcom/facebook/ads/redexgen/X/mg;

    xor-int/lit8 v0, v6, 0x1

    aget-object v0, p0, v0

    .line 29085
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v11, v9, v0}, Lcom/facebook/ads/redexgen/X/mg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29086
    xor-int/lit8 v0, v6, 0x1

    aput-object v9, p0, v0

    .line 29087
    goto :goto_6

    .line 29088
    .restart local v8    # "keyIndex":I
    .restart local v9    # "outKeyIndex":I
    .restart local v10    # "key":Ljava/lang/Object;
    .restart local v11    # "value":Ljava/lang/Object;
    .restart local v12    # "h":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 29089
    .end local v6    # "i":I
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "h":I
    :cond_b
    if-ne v8, v5, :cond_c

    move-object v2, v7

    :goto_7
    return-object v2

    :cond_c
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v7, v2, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    goto :goto_7

    .line 29090
    .end local v2    # "hashTable":[S
    .end local v5    # "outI":I
    :cond_d
    new-array v6, v1, [I

    .line 29091
    .local v2, "hashTable":[I
    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([II)V

    .line 29092
    const/4 v1, 0x0

    .line 29093
    .restart local v5    # "outI":I
    const/4 v7, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v7, v5, :cond_11

    .line 29094
    mul-int/lit8 v2, v7, 0x2

    add-int v2, v2, p3

    .line 29095
    .local v9, "keyIndex":I
    mul-int/lit8 v12, v1, 0x2

    add-int v12, v12, p3

    .line 29096
    .local v10, "outKeyIndex":I
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 29097
    .local v11, "key":Ljava/lang/Object;
    xor-int/lit8 v0, v2, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29098
    .local v12, "value":Ljava/lang/Object;
    invoke-static {v9, v2}, Lcom/facebook/ads/redexgen/X/ll;->A03(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29099
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/mU;->A00(I)I

    move-result v10

    .line 29100
    .local v13, "h":I
    :goto_9
    and-int/2addr v10, v15

    .line 29101
    aget v8, v6, v10

    .line 29102
    .local v14, "previousKeyIndex":I
    if-ne v8, v11, :cond_f

    .line 29103
    aput v12, v6, v10

    .line 29104
    .end local v13    # "h":I
    .end local v14    # "previousKeyIndex":I
    if-ge v1, v7, :cond_e

    .line 29105
    aput-object v9, p0, v12

    .line 29106
    xor-int/lit8 v0, v12, 0x1

    aput-object v2, p0, v0

    .line 29107
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 29108
    .end local v9    # "keyIndex":I
    .end local v10    # "outKeyIndex":I
    .end local v11    # "key":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13
    .end local v14
    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v11, -0x1

    goto :goto_8

    .line 29109
    .restart local v13    # "h":I
    .restart local v14    # "previousKeyIndex":I
    :cond_f
    aget-object v0, p0, v8

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29110
    new-instance v3, Lcom/facebook/ads/redexgen/X/mg;

    xor-int/lit8 v0, v8, 0x1

    aget-object v0, p0, v0

    .line 29111
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v9, v2, v0}, Lcom/facebook/ads/redexgen/X/mg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29112
    xor-int/lit8 v0, v8, 0x1

    aput-object v2, p0, v0

    .line 29113
    goto :goto_a

    .line 29114
    .restart local v9    # "keyIndex":I
    .restart local v10    # "outKeyIndex":I
    .restart local v11    # "key":Ljava/lang/Object;
    .restart local v12    # "value":Ljava/lang/Object;
    .restart local v13    # "h":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    const/4 v11, -0x1

    goto :goto_9

    .line 29115
    .end local v6    # "i":I
    .end local v9    # "keyIndex":I
    .end local v10    # "outKeyIndex":I
    .end local v11    # "key":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13    # "h":I
    :cond_11
    if-ne v1, v5, :cond_12

    move-object v2, v6

    :goto_b
    return-object v2

    :cond_12
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    goto :goto_b
.end method


# virtual methods
.method public final A0A()Lcom/facebook/ads/redexgen/X/ma;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/ma<",
            "TV;>;"
        }
    .end annotation

    .line 29116
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/1X;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1X;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/Al;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Al<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 29117
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/1Z;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1Z;-><init>(Lcom/facebook/ads/redexgen/X/mj;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/Al;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Al<",
            "TK;>;"
        }
    .end annotation

    .line 29118
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/1X;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/1X;-><init>([Ljava/lang/Object;II)V

    .line 29119
    .local v0, "keyList":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/1Y;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1Y;-><init>(Lcom/facebook/ads/redexgen/X/mj;Lcom/facebook/ads/redexgen/X/Am;)V

    return-object v0
.end method

.method public final A0F()Z
    .locals 1

    .line 29120
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 29121
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AL;->A02:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/AL;->A01(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29122
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 29123
    const/4 v0, 0x0

    return-object v0

    .line 29124
    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 29125
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AL;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:I

    return v0
.end method
