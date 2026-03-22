.class final Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method public constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public get(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getMaximumValue()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/chrono/AssembledChronology;->weeks()Lorg/joda/time/DurationField;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
