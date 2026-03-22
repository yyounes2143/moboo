.class Lorg/joda/time/format/DateTimeParserInternalParser;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/InternalParser;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParser;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/DateTimeParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParser;

    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/joda/time/format/InternalParser;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeParserInternalParser;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimeParserInternalParser;-><init>(Lorg/joda/time/format/DateTimeParser;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/joda/time/format/DateTimeParser;->estimateParsedLength()I

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
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParser;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
