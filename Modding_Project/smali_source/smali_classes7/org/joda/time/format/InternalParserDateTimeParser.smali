.class Lorg/joda/time/format/InternalParserDateTimeParser;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/DateTimeParser;
.implements Lorg/joda/time/format/InternalParser;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/InternalParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserInternalParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParser;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParser;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Lorg/joda/time/format/DateTimeParser;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    if-nez p0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_2
    new-instance v0, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lorg/joda/time/format/InternalParserDateTimeParser;-><init>(Lorg/joda/time/format/InternalParser;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/InternalParser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
