package org.apache.commons.io.filefilter;

import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileFilterUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final IOFileFilter f13333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("CVS")));

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final IOFileFilter f13332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(".svn")));

    public static List<IOFileFilter> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOFileFilter... iOFileFilterArr) {
        if (iOFileFilterArr != null) {
            ArrayList arrayList = new ArrayList(iOFileFilterArr.length);
            for (int i = 0; i < iOFileFilterArr.length; i++) {
                IOFileFilter iOFileFilter = iOFileFilterArr[i];
                if (iOFileFilter != null) {
                    arrayList.add(iOFileFilter);
                } else {
                    throw new IllegalArgumentException("The filter[" + i + "] is null");
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("The filters must not be null");
    }

    public static IOFileFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOFileFilter iOFileFilter) {
        return new NotFileFilter(iOFileFilter);
    }

    public static IOFileFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return new NameFileFilter(str);
    }

    public static IOFileFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return DirectoryFileFilter.DIRECTORY;
    }

    public static IOFileFilter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOFileFilter... iOFileFilterArr) {
        return new AndFileFilter(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iOFileFilterArr));
    }
}
