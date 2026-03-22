.class Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleFormatterCacheKey"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>(IIILjava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 5
    .line 6
    shl-int/lit8 p2, p2, 0x4

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    shl-int/lit8 p2, p3, 0x8

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    .line 15
    .line 16
    iget v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    iget v3, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    if-eq v2, v3, :cond_3

    .line 21
    .line 22
    return v1

    .line 23
    :cond_3
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 24
    .line 25
    if-nez v2, :cond_4

    .line 26
    .line 27
    iget-object p1, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 28
    .line 29
    if-eqz p1, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_4
    iget-object p1, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    add-int/2addr v0, v1

    .line 18
    return v0
.end method
