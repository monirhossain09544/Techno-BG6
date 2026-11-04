.class public Lcom/android/internal/print/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V
    .registers 8

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 192
    const-wide v0, 0x10500000001L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result p3

    const-string v2, "top_mils"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 193
    const-wide v0, 0x10500000002L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result p3

    const-string v2, "left_mils"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 194
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result p3

    const-string v2, "right_mils"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 195
    const-wide v0, 0x10500000004L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result p3

    const-string p4, "bottom_mils"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 197
    return-void
.end method

.method public static blacklist writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V
    .registers 9

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 156
    const-wide v0, 0x10900000001L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getId()Ljava/lang/String;

    move-result-object p4

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/print/PrintAttributes$MediaSize;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    const-string p4, "label"

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 158
    const-wide v0, 0x10500000003L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result p0

    const-string p4, "height_mils"

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 159
    const-wide v0, 0x10500000004L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result p0

    const-string p4, "width_mils"

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 160
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 161
    return-void
.end method

.method public static blacklist writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V
    .registers 8

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 268
    const-wide v0, 0x10500000001L

    invoke-virtual {p4}, Landroid/print/PageRange;->getStart()I

    move-result p3

    const-string v2, "start"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 269
    const-wide v0, 0x10500000002L

    invoke-virtual {p4}, Landroid/print/PageRange;->getEnd()I

    move-result p3

    const-string p4, "end"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 271
    return-void
.end method

.method public static blacklist writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V
    .registers 12

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 213
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v5

    .line 214
    if-eqz v5, :cond_25

    .line 215
    const-string v2, "media_size"

    const-wide v3, 0x10b00000001L

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 216
    const-wide p0, 0x10800000002L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result p4

    const-string v0, "is_portrait"

    invoke-virtual {v1, v0, p0, p1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    goto :goto_26

    .line 214
    :cond_25
    move-object v1, p1

    .line 219
    :goto_26
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object p0

    .line 220
    if-eqz p0, :cond_36

    .line 221
    const-string p1, "resolution"

    const-wide v2, 0x10b00000003L

    invoke-static {v1, p1, v2, v3, p0}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 224
    :cond_36
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p0

    .line 225
    if-eqz p0, :cond_46

    .line 226
    const-string p1, "min_margings"

    const-wide v2, 0x10b00000004L

    invoke-static {v1, p1, v2, v3, p0}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 229
    :cond_46
    const-wide p0, 0x10e00000005L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result p4

    const-string v0, "color_mode"

    invoke-virtual {v1, v0, p0, p1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 230
    const-wide p0, 0x10e00000006L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result p4

    const-string p5, "duplex_mode"

    invoke-virtual {v1, p5, p0, p1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 231
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 232
    return-void
.end method

.method public static blacklist writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V
    .registers 14

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 245
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 247
    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getPageCount()I

    move-result p3

    .line 248
    const/4 v0, -0x1

    if-eq p3, v0, :cond_23

    .line 249
    const-string v0, "page_count"

    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 252
    :cond_23
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getContentType()I

    move-result p3

    const-string v2, "content_type"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 253
    const-wide v5, 0x10300000004L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getDataSize()J

    move-result-wide v7

    const-string v4, "data_size"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 254
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 255
    return-void
.end method

.method public static blacklist writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V
    .registers 17

    .line 285
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 286
    const-wide v1, 0x10900000001L

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 288
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_27

    .line 290
    nop

    .line 291
    invoke-virtual {v1}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, "print_job_id"

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 294
    :cond_27
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    .line 295
    const-wide v2, 0x10e00000003L

    const-string v4, "state"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v1, v9, :cond_3d

    const/4 v5, 0x7

    if-gt v1, v5, :cond_3d

    .line 296
    invoke-virtual {p1, v4, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_40

    .line 298
    :cond_3d
    invoke-virtual {p1, v4, v2, v3, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 301
    :goto_40
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_50

    .line 303
    const-string v2, "printer"

    const-wide v3, 0x10b00000004L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 306
    :cond_50
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_60

    .line 308
    const-string v2, "tag"

    const-wide v3, 0x10900000005L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 311
    :cond_60
    nop

    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v4

    .line 311
    const-string v1, "creation_time"

    const-wide v2, 0x10300000006L

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 314
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAttributes()Landroid/print/PrintAttributes;

    move-result-object v5

    .line 315
    if-eqz v5, :cond_82

    .line 316
    const-string v2, "attributes"

    const-wide v3, 0x10b00000007L

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V

    .line 320
    :cond_82
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_92

    .line 322
    const-string v2, "document_info"

    const-wide v3, 0x10b00000008L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/print/DumpUtils;->writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V

    .line 326
    :cond_92
    const-wide v1, 0x10800000009L

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    const-string v4, "is_canceling"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 328
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPages()[Landroid/print/PageRange;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_b9

    .line 330
    move v2, v8

    :goto_a7
    array-length v3, v1

    if-ge v2, v3, :cond_b9

    .line 331
    const-wide v3, 0x20b0000000aL

    aget-object v5, v1, v2

    const-string v10, "pages"

    invoke-static {p1, v10, v3, v4, v5}, Lcom/android/internal/print/DumpUtils;->writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 335
    :cond_b9
    nop

    .line 336
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAdvancedOptions()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_c1

    move v8, v9

    .line 335
    :cond_c1
    const-string v1, "has_advanced_options"

    const-wide v2, 0x1080000000bL

    invoke-virtual {p1, v1, v2, v3, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 337
    const-wide v1, 0x1020000000cL

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getProgress()F

    move-result v3

    const-string v4, "progress"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JF)V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_f3

    .line 341
    const-wide v2, 0x1090000000dL

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "status"

    invoke-virtual {p1, v4, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 344
    :cond_f3
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 345
    return-void
.end method

.method public static blacklist writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V
    .registers 15

    .line 76
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 77
    nop

    .line 78
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p4

    .line 77
    const-string v0, "min_margins"

    const-wide v1, 0x10b00000001L

    invoke-static {p1, v0, v1, v2, p4}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 80
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    .line 81
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, p4, :cond_3a

    .line 82
    nop

    .line 83
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/print/PrintAttributes$MediaSize;

    .line 82
    const-string v5, "media_sizes"

    const-wide v6, 0x20b00000002L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 86
    :cond_3a
    move-object v4, p1

    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 87
    nop

    :goto_44
    if-ge v0, p0, :cond_5e

    .line 88
    nop

    .line 89
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintAttributes$Resolution;

    .line 88
    const-string p4, "resolutions"

    const-wide v1, 0x20b00000003L

    invoke-static {v4, p4, v1, v2, p1}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 92
    :cond_5e
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    const-wide v0, 0x20e00000004L

    const-string p4, "color_modes"

    if-eqz p0, :cond_70

    .line 93
    invoke-virtual {v4, p4, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    :cond_70
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result p0

    const/4 v2, 0x2

    and-int/2addr p0, v2

    if-eqz p0, :cond_7b

    .line 97
    invoke-virtual {v4, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 101
    :cond_7b
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result p0

    and-int/2addr p0, p1

    const-wide v0, 0x20e00000005L

    const-string p4, "duplex_modes"

    if-eqz p0, :cond_8c

    .line 102
    invoke-virtual {v4, p4, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 105
    :cond_8c
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_96

    .line 106
    invoke-virtual {v4, p4, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 109
    :cond_96
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result p0

    const/4 p1, 0x4

    and-int/2addr p0, p1

    if-eqz p0, :cond_a1

    .line 110
    invoke-virtual {v4, p4, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 114
    :cond_a1
    invoke-virtual {v4, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 115
    return-void
.end method

.method public static blacklist writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V
    .registers 8

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 59
    nop

    .line 60
    invoke-virtual {p4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object p3

    .line 59
    const-string v0, "service_name"

    const-wide v1, 0x10b00000001L

    invoke-static {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 61
    const-wide v0, 0x10900000002L

    invoke-virtual {p4}, Landroid/print/PrinterId;->getLocalId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "local_id"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method public static blacklist writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V
    .registers 15

    .line 129
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 130
    const-wide v0, 0x10b00000001L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object p4

    const-string v2, "id"

    invoke-static {p1, v2, v0, v1, p4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 131
    const-wide v0, 0x10900000002L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "name"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 132
    const-wide v0, 0x10e00000003L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getStatus()I

    move-result p4

    const-string v2, "status"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    const-wide v0, 0x10900000004L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object p4

    const-string v2, "description"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 135
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getCapabilities()Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v8

    .line 136
    if-eqz v8, :cond_4f

    .line 137
    const-string v5, "capabilities"

    const-wide v6, 0x10b00000005L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/print/DumpUtils;->writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V

    goto :goto_50

    .line 136
    :cond_4f
    move-object v4, p1

    .line 141
    :goto_50
    invoke-virtual {v4, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 142
    return-void
.end method

.method public static blacklist writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V
    .registers 8

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 174
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v2, "id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 175
    const-wide v0, 0x10900000002L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object p3

    const-string v2, "label"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 176
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result p3

    const-string v2, "horizontal_DPI"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 177
    const-wide v0, 0x10500000004L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result p3

    const-string p4, "veritical_DPI"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 179
    return-void
.end method
