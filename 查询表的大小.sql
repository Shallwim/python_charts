select a.name as '����',b.rows as '��������bai��du'
from sysobjects a inner join sysindexes b
on a.id = b.id
where a.type = 'u'
and b.indid in (0,1)
order by b.rows desc