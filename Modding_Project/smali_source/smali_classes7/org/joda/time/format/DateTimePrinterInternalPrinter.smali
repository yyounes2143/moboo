.class Lorg/joda/time/format/DateTimePrinterInternalPrinter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/DateTimePrinter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/joda/time/format/InternalPrinterDateTimePrinter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/joda/time/format/InternalPrinter;

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
    new-instance v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;-><init>(Lorg/joda/time/format/DateTimePrinter;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/joda/time/format/DateTimePrinter;->estimatePrintedLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 2
    move-object v2, p1

    check-cast v2, Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 5
    move-object v4, p1

    check-cast v4, Ljava/io/Writer;

    .line 6
    iget-object v3, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    move-wide v5, p2

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    return-void

    .line 7
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 8
    iget-object v3, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    move-wide v5, p2

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 9
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljava/lang/StringBuffer;

    .line 12
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Ljava/io/Writer;

    .line 15
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 17
    iget-object v1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v1, v0, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 18
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
