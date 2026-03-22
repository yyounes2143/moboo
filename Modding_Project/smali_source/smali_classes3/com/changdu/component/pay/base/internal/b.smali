.class public abstract Lcom/changdu/component/pay/base/internal/b;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    array-length v3, p0

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget-byte v3, p0, v2

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x2

    .line 30
    if-ge v4, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public static b([B)[B
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    new-array v2, v2, [B

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "e9fcb7f959934c422f6f178c608db9809a17d885f45d90351d2c1d4a5f27e83374bca21c36035208b2b24645bd72a3165449351e0e7d1783ab624b9c866ce583"

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    div-int/lit8 v4, v4, 0x2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-array v5, v4, [B

    .line 26
    .line 27
    :goto_0
    if-ge v1, v4, :cond_0

    .line 28
    .line 29
    mul-int/lit8 v6, v1, 0x2

    .line 30
    .line 31
    aget-char v7, v3, v6

    .line 32
    .line 33
    const-string v8, "0123456789ABCDEF"

    .line 34
    .line 35
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    int-to-byte v7, v7

    .line 40
    shl-int/lit8 v7, v7, 0x4

    .line 41
    .line 42
    add-int/2addr v6, v0

    .line 43
    aget-char v6, v3, v6

    .line 44
    .line 45
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    int-to-byte v6, v6

    .line 50
    or-int/2addr v6, v7

    .line 51
    int-to-byte v6, v6

    .line 52
    aput-byte v6, v5, v1

    .line 53
    .line 54
    add-int/2addr v1, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    .line 57
    .line 58
    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/math/BigInteger;

    .line 62
    .line 63
    invoke-direct {v2, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    .line 67
    .line 68
    invoke-direct {v3, v2, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "RSA"

    .line 72
    .line 73
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "RSA/ECB/PKCS1Padding"

    .line 82
    .line 83
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method
