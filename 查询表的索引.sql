SELECT
     ��������=a.name
     ,����=c.name
     ,�����ֶ���=d.name
     ,�����ֶ�λ��=d.colid
     ,c.status
  FROM sysindexes a
     JOIN sysindexkeys b ON a.id=b.id AND a.indid=b.indid
     JOIN sysobjects c ON b.id=c.id
     JOIN syscolumns d ON b.id=d.id AND b.colid=d.colid
WHERE a.indid NOT IN(0,255)
              and c.xtype='U' --and c.status>0 --�������û���
              --AND c.name='message' --��ָ����
ORDER BY c.name,a.name,d.name;